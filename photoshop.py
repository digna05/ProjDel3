import mysql.connector
class Photoshop:

    def query1(self,crsr):
        crsr.execute('SELECT DISTINCT LoginName FROM transactions WHERE TotalAmount > 100')
        result = crsr.fetchall()
        for i in result:
            print(i) 

    def query2(self,crsr):
        crsr.execute(''' SELECT PhotoID FROM photo WHERE TransID IS NULL OR TransID = '' ''')
        result = crsr.fetchall()
        for i in result:
            print(i)

    def query3(self,crsr,model):
        crsr.execute('''SELECT LoginName FROM transactions WHERE TransID IN
        (SELECT TransID FROM photo WHERE PhotoID IN
        (SELECT PHOTOID FROM models WHERE MName = %s))
        AND TransID NOT IN
        (SELECT TransID FROM photo WHERE PhotoID IN
        (SELECT PHOTOID FROM models WHERE MName != %s))
        ''',(model,model,))
        result = crsr.fetchall()
        print(result)

    def query4(self,crsr):
        crsr.execute('SELECT RPName FROM influences WHERE EPName IN (SELECT PName FROM photographer WHERE PNationality = "American")')
        result = crsr.fetchall()
        result = list(dict.fromkeys(result))
        for i in result:
            print(i)

    def query5(self,crsr):
        crsr.execute('''SELECT PName FROM photographer WHERE PName IN
        (SELECT PName FROM photo WHERE PhotoID IN (SELECT DISTINCT PhotoID FROM models))
        AND PName NOT IN (SELECT PName FROM photo WHERE PhotoID IN (SELECT PhotoID FROM abstract))
        AND PName NOT IN (SELECT PName FROM photo WHERE PhotoID IN (SELECT PhotoID FROM landscape))
        ''')
        result = crsr.fetchall()
        for i in result:
            print(i)

    def query6(self,crsr):
        crsr.execute('''SELECT TransID FROM photo
        WHERE (TransID IS NOT NULL)
        GROUP BY TransID
        HAVING COUNT(*)>=3
        ''')
        result = crsr.fetchall()
        for i in result:
            print(i)


    def query7(self,crsr,photograhper):
        crsr.execute('''SELECT DISTINCT MName FROM models WHERE PhotoID IN (SELECT PhotoID FROM photo WHERE PName=%s)
        AND PhotoID NOT IN (SELECT PhotoID FROM photo WHERE PName !=%s)
        ''',(photograhper,photograhper,))
        result = crsr.fetchall()
        for i in result:
            print(i, "\n")

    def query8(self,crsr):
        crsr.execute('''SELECT DISTINCT PName,SUM(Price)
        FROM photo
        GROUP BY PName
        ORDER BY SUM(Price) DESC
        ''')
        result = crsr.fetchall()
        for i in result:
            print(i) 

    def query9(self,crsr,mydb,photoID):
        crsr.execute('''DELETE FROM photo WHERE PhotoID =%s''',(photoID,))
        mydb.commit()
        print('The photo with PhotoID:'+photoID+' was deleted.')

    def query10(self,crsr,mydb,photoID,name):
        crsr.execute('''UPDATE photo SET PName=%s WHERE PhotoID=%s''',(name,photoID))
        mydb.commit()
        print('The photo with the PhotoID:'+photoID+' had the photograhper name updated to '+name+'.')

    def query11(self,crsr):
        crsr.execute('''SELECT LoginName,SUM(TotalAmount)
        FROM transactions
        Group BY LoginName
        ''')
        result = crsr.fetchall()
        for i in result:
            print(i)

    def query12(self,crsr):
        crsr.execute('''SELECT photo.PName,SUM(transactions.TotalAmount)
        FROM photo INNER JOIN transactions
        ON photo.TransID = transactions.TransID
        GROUP BY photo.PName''')
        result = crsr.fetchall()
        for i in result:
            print(i)

    def query13(self,crsr):
        landscapequery = '''SELECT SUM(TotalAmount) AS %s
        FROM transactions WHERE TransID IN
        (SELECT TransID FROM photo WHERE PhotoID IN
        (SELECT PhotoID FROM landscape)
        )'''

        abstractquery = '''SELECT SUM(TotalAmount) AS %s
        FROM transactions WHERE TransID IN
        (SELECT TransID FROM photo WHERE PhotoID IN
        (SELECT PhotoID FROM abstract)
        )'''

        portraitquery = '''SELECT SUM(TotalAmount) AS %s
        FROM transactions WHERE TransID IN
        (SELECT TransID FROM photo WHERE PhotoID IN
        (SELECT PhotoID FROM models)
        )'''


        crsr.execute(landscapequery,('landscape TotalAmount',))
        landscape = crsr.fetchall()
        print(landscape)

        crsr.execute(abstractquery,('abstract TotalAmount',))
        abstract = crsr.fetchall()
        print(abstract)

        crsr.execute(portraitquery,('portrait TotalAmount',))
        portrait = crsr.fetchall()
        print(portrait)

    def query14(self,crsr):
        crsr.execute('''SELECT TDate,SUM(TotalAmount) FROM transactions
        GROUP BY TDate
        ORDER BY SUM(TotalAmount) DESC''')

        result = crsr.fetchall()
        for i in result:
            print(i)

    def __init__(self):
        mydb = mysql.connector.connect(host='localhost',user='root',passwd='mango05%',database='photoshop')
        crsr = mydb.cursor()
        #self.createDatabase(mydb,crsr)
        option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
        while option != 'q':
            if option == '1':
                self.query1(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option =='2':
                self.query2(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '3':
                model = input('Please enter a model\'s name: ')
                self.query3(crsr,model)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '4':
                self.query4(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '5':
                self.query5(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '6':
                self.query6(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '7':
                photographer = input('Please enter the photograhper\'s name: ')
                self.query7(crsr,photographer)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '8':
                self.query8(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '9':
                photoID = input('Enter the photoID of the photo to be deleted.')
                self.query9(crsr,mydb,photoID)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '10':
                photoID = input('Enter the photoID of the photo to be updated: ')
                name = input('Enter the name to update to: ')
                self.query10(crsr,mydb,photoID,name)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '11':
                self.query11(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '12':
                self.query12(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '13':
                self.query13(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            elif option == '14':
                self.query14(crsr)
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
            else:
                print("Query number does not exist. Please enter a number between 1-14.")
                option = input("Enter 1-14 to run the corresponding query. Enter q to quit the program: ")
Photoshop()
