# Online-Book-Store-Kompas
Database design and implementation of online book store Kompas using MySQL programming language

## Introduction

That project is about database design and implementation on MySQL. It was created from scratch as an assignment for recruitment at a university where I am studying computing science. It is a hypothetical scenario for creating an online book store, Kompas, and I will outline and expose all steps of the creation of the project.

## 	Data Requirements

The online bookstore Kompas is a new website for selling online books, and they want customers to be allowed to search books, authors, and publishers efficiently Also, customers successful to made transaction operations. The database must be well-structured and well-defined to succeed. 

* Customers - all customers registered on website should include their details such as name, address, phone number and email.

*	Oline bookstore Kompas - to provide information such as address, phone number and email so customers can quickly contact them.
*	Category – must show a variety of genres, publishers, and option to choose of ages category.
*	Orders – must show quantity of items, list of chosen items, date, and price.
*	Payment – to provide separate ways of payment method such as credit cards, debit cards and PayPal method.
*	Shipping – to give to customers options to choose a chipping method such as, click collect, next day delivery and regular shipping method, also options of shipping charges.
*	Books review - to show date, text, and name of the book, also customers to allowed give rating of 1 to 5 stars.
*	Managers – must include details such as name, address, phone, email.
*	Staff – must show name, address, phone number, email, where they work, and who manages them.
*	Admin – name of the admin who manage website.
*	Branches – must provide information as place, phone, who staff work inside and who manages the branches.

## 	Transaction requirements

Database transaction requirements are when we used CRUD (Create, Read, Update, and Delete) for data storage.
*	Data entry – enter details of the customers, details of the order, shipping, product, and payment.
*	Data Update and Delete – Update/Delete data of customers, products, staff, managers, and admin.
*	Data queries:  
 a)	List the details of customers such as personal details, order, payment, shopping.  
 b)	List the comment, rating of the product and date.  
 c)	List name of the staff, workplace and who manages them.  
 d)	Display details of the online bookstore Kompas and who manages him.  

## Conceptual Design

The conceptual design plays a crucial role in creating a database structure. In the previous chapter, we exposed in a comprehensive way data and transaction requirements, and the next step is to create a conceptional design for our scenario. The diagram below, shows entities and attributes connected with arrows, showing relationship notation between entities.
The entity is represented in a rectangle shape, which plays a role as a subject or noun. The attributes are represented as an oval shape and play a role as a characteristic of the entities. Also, the arrows showed the relation notation, which is:
•	1-0.M – 1 to 0 or many.
•	M-M – many to many.
•	0.1 – 0 or 1.
•	1-M – 1 to many.
•	O.M – 0 or many.
This diagram displays the main entities and attributes involved in the scenario. The next chapter will define the primary keys, foreigner keys and data types used in the attributes.  



![image](https://github.com/user-attachments/assets/4f29e4da-c064-4e9b-8a4e-4ed90658c9f0)  

## Logical Design

What is the UML diagram, and where could we use it? We will explain the UML diagram briefly before outlining the UML diagram created for our scenario. UML diagrams plays crucial role in Logical design in Database and architecture structure. The UML’s role is to expose and define entities or classes and their relationships and notation. The software engineers and database engineers used different kind of UML diagram model. That model diagram gives the ability to create a program code for applications and database in single language.
Following our Conceptual design from previous chapter, we created a UML diagram, which is represented in tabular form. That tabular diagram will give it a comprehensive view of the main components connected, which are primary keys and foreign keys.
We have twelve entity tables, and every table has one primary key, which plays role in uniquely identifying each row in the table. The foreign keys we defined play a role in determining the relations database by linking the tables. The crow foot notation will give it a view of the relative cardinality of relationships.  
We also, defined the data types, which will used it to implement in MySQL programming. The data types which we used in our scenario are:
*	INT- to define the primary key in hole number.
*	VARCHAR - defined and represented of variables length up to 255 bytes.
*	DECIMAL – is used to represent numbers with decimal point.
*	ENUM – contain small number or letter of variables and only one of them can choose.
*  SET – contain up to 64 variables and allows choose more than one of them.
*	TEXT – information stored in writing format. There are three types of TEXT data types, small, medium, and large. In our scenario, we will used the medium Text data type.
*	DATE – represented the time and date.
*	YEAR – Used when we would like to store only the year release of the product.
It is also defined as which entity is a parent and a child. We have only three entities as a parent. The parent entity has crown notation 1 to 1 or 1 to M and controls other children’s entities. The child entity depends on the parent entity; however, the child entity could sometimes exist independently. In the figure below will gives a clear view of all determined information above.
![Screenshot_28-3-2025_193310_](https://github.com/user-attachments/assets/68dde463-ea74-41ae-8b21-d9964958cc71)


## Database implementation on Workbench MySQL
### Manager table
First, we created the database, and start to create the tables. In the Managers table, we used INT, VARCHAR data types, defined the primary key, and because that table is a parent does not need to include a foreign key inside.  The data inserted inside was successful. You can see in the figure below.  

![image](https://github.com/user-attachments/assets/993b84a9-a791-4301-8e8c-1dbf3216ad0f)  

### Branches table
In the Branches table, we used INT, VARCHAR data type and declared the foreign key inside to connect Managers table with Branches table. The data inserted inside was successful, see figure.  

![image](https://github.com/user-attachments/assets/bb0238f9-75de-4057-ad1e-dc741e7e215a)  

### Staff table
In the Staff table, we used INT, VARCHAR data type and declared two foreign keys to connect Managers, and Branches tables with the Staff table. Also successfully inserted data inside, see figure below.  

![image](https://github.com/user-attachments/assets/d3ccb745-ea1a-4527-995d-1ca3e6aca676)  

### Admin table
Int Admin table, we used INT, VARCHAR data types, and because is a parent table does not include any foreign keys inside. We have only one Admin which is engaged with the website.  

![image](https://github.com/user-attachments/assets/7d0ced62-46af-455b-a654-a84ef8a104e8)  

### Online Bookstore table
In the Online Bookstore table, we used INT, VARCHAR data types. We have one foreign key, which will be used to connect Admin table with the Online Bookstore table. The data was successfully inserted into table.  

![image](https://github.com/user-attachments/assets/83ec6e2e-65e6-4edd-a846-e26891c4b3e6)  

### Customers table
In the Customers table, we used INT, VARCHAR as a data types, and successfully inserted data inside. That table is parent, and does not include foreign key.  

![image](https://github.com/user-attachments/assets/7c7dc4b5-628e-451f-808e-2b8d80772214)  

### Books Review table
Int the Books Review table, we used INT, VARCHAR, ENUM, and MEDIUMTEXT data types, also create a foreign key to connect Customers table with the Books Review table. The data was successfully inserted into table.  

![image](https://github.com/user-attachments/assets/2fe5fdce-1d65-4d18-93b3-c64bb5b26820)  

### Books table
In the Books table, we used INT, VATCHAR and DECIMAL data types. We declared a foreign key to connect Books Review table with Books table. We use the code; ALTER TABLE BOOKS AOUTO_INCREMENT to start from specific number we want.  

![image](https://github.com/user-attachments/assets/63430e78-2584-4699-84b8-1449a13773f7)  

### Category table
In the Category table, we used INT, VARCHAR, SET, YEAR, ENUM data types, and create a foreign key to connect Books table with the Category table. The data was successfully inserted.  

![image](https://github.com/user-attachments/assets/389c4a7d-5206-4f8b-8acf-b3478cb54938)  

### Orders table
In the Orders table, we declared INT, VARCHAR, DECIMAL, DATE data types, and created a foreign key to connect the Books table with Orders table. Also, after inserted data successfully onto table, we alter the table and add column ID_Customer and add a foreign key to connect Customers table with the Orders table. We must update the data into Order table as well.  

![image](https://github.com/user-attachments/assets/17abe57f-a076-46fc-a343-7a2e6b6f3dc4)  
###
![image](https://github.com/user-attachments/assets/fada6fc2-5c91-4219-9fa4-d3fecafe585a)  

### Payment table
In the Payment table, we used INT, VARCHAR, ENUM, DECIMAL data types, and created a foreign key to connect Orders table with the Payment table. We add column ID_Customer and foreign key to connect Customers table with the Payment table and updated the data inside see figures below.  

![image](https://github.com/user-attachments/assets/5e8c7547-10bd-4425-bc29-bc62f9633b53)  

###
![image](https://github.com/user-attachments/assets/303725e9-10e6-4645-9284-6b471a0aace8)  

### Shipping table
In the Shipping table, we used INT, and ENUM data types, we created foreign key to connect Payment table with the Shipping table. We, add column ID_Customer and foreign key to connect the Customers table and Shipping table together and updated the data inside the table like other tables Orders and Payment. See figures bellow.  

![image](https://github.com/user-attachments/assets/21625920-201d-4332-ab9a-0e2eb9f1a6d9)  

###
![image](https://github.com/user-attachments/assets/7eaa5984-bdc7-4b72-9123-36a7b0162a4c)  


## Join Tables Using Methods and Function.
### Join tables
The must using Join type is INNER JOIN, creating an ALIANSING function will allow us to save time when writing SQL code, representing a short temporary name of the table ALIASING can be used to rename columns as well. In the first figure INNER JOIN three tables, showing the INNER join connection between Customers, BooksReview, and Books tables, using ALIASING short name of the table. In the second  figure INNER JOIN four Table, you can see successful INNER JOIN four table, Customers, Orders, Payment, and Shipping.  

![image](https://github.com/user-attachments/assets/41adff3e-8d1d-47a2-ae38-dc83771d9914)  

### 
![image](https://github.com/user-attachments/assets/b9db1eac-0598-46ca-bd49-a47c38e95550)  

### View table

The View table is a virtual table which contains rows and columns from one or more tables connecting using the Join function. We created a view table CustomerBooksRating and connected three tables’ Customers, BooksReview and Books, using INNER JOIIN.  

![image](https://github.com/user-attachments/assets/6b1b1d4f-8f5c-4d15-ad69-dfeef55394ac)  

### Stored Procedure Function
Stored Procedure Function is used, when frequently write code query. That function saves your time to retrieve data from database, see figure (Figure 19). We created a Stored Procedure, and first we changed the DELIMITER symbol with (@) because the code which start from begin with will not be executed and the MySQL does not allow you to continue, after that immediately we return the DELIMITER into previous symbol which is (;). With CALL GET_ Customers () code, we in shortest way retrieved all data from Customers table.  

![image](https://github.com/user-attachments/assets/290fcb22-a9ed-437d-9602-a58560c01bec)  

### Stored Function
The Stored Function allow you to perform calculation and return a value. Again, like in Sored Procedure, we changed the DELIMITERS with different symbols and create Function to multiply the Amount column with Quantities column and the result to be showed into separate column as LineTotal. Also, we used CONCAT function to add £ symbol to the complete amount in each row.  

![image](https://github.com/user-attachments/assets/43fa9e60-2afa-4cf3-adb2-3002239cbc3e)  

### Trigger
Trigger is a function, which allows us to track the data BEFORE or AFTER inserting, updating, or deleting. We, create a trigger to track when new customer is inserted into Customer table. For that, we create a separate table see firts figure, where automatically will show that information and date and time inserted into Customers table.  

![image](https://github.com/user-attachments/assets/d5b23a41-3570-4c8c-b3c2-5efcc17824ed)  

###
![image](https://github.com/user-attachments/assets/b4f1dfb7-228f-4ab2-8618-5d4d62cbb396)  

## Conclusion
At that report, we outlined how we created the database for Online Bookstore Kompas.
We exposed how we created tables, declared the primary keys and foreign keys, and inserted data into tables. We created relationship between tables with foreign keys using Join function and added columns from different tables together. Also, outlined with examples how we created View, Stored Procedure, Stored Function and Trigger successfully. 




















  



















