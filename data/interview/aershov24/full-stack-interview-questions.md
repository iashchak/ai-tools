## [[⬆]](#toc) <a name=.NETCore>.NET Core</a> Interview Questions
#### What is the difference between String and string in C#? 
`string` is an alias in C# for `System.String`. So technically, there is no difference. It's like `int` vs. `System.Int32`.

As far as guidelines, it's generally recommended to use `string` any time you're referring to an object.
```csharp
string place = "world";
```

Likewise, it's generally recommended to use `String` if you need to refer specifically to the class.
```csharp
string greet = String.Format("Hello {0}!", place);
```


#### What is .NET Standard? 
The **.NET Standard** is a formal specification of .NET APIs that are intended to be available on all .NET implementations.


#### What is .NET Core? 
The .NET Core platform is a new .NET stack that is optimized for open source development and agile delivery on NuGet. 

.NET Core has two major components. It includes a small runtime that is built from the same codebase as the .NET Framework CLR. The .NET Core runtime includes the same GC and JIT (RyuJIT), but doesn’t include features like Application Domains or Code Access Security. The runtime is delivered via NuGet, as part of the ASP.NET Core package.

.NET Core also includes the base class libraries. These libraries are largely the same code as the .NET Framework class libraries, but have been factored (removal of dependencies) to enable to ship a smaller set of libraries. These libraries are shipped as `System.*` NuGet packages on NuGet.org.


#### What is the .NET Framework? 
The .NET is a Framework, which is a collection of classes of reusable libraries given by Microsoft to be used in other .NET applications and to develop, build and deploy many types of applications on the Windows platform including the following:

*   Console Applications
*   Windows Forms Applications
*   Windows Presentation Foundation (WPF) Applications
*   Web Applications
*   Web Services
*   Windows Services
*   Services-oriented applications using Windows Communications Foundation (WCF)
*   Workflow-enabled applications using Windows Workflow Foundation(WF)


#### What's the difference between SDK and Runtime in .NET Core? 
* The SDK is all of the stuff that is needed/makes developing a .NET Core application easier, such as the CLI and a compiler.

* The runtime is the "virtual machine" that hosts/runs the application and abstracts all the interaction with the base operating system.


#### What is .NET Standard and why we need to consider it? 
 1. **.NET Standard** solves the code sharing problem for .NET developers across all platforms by bringing all the APIs that you expect and love across the environments that you need: desktop applications, mobile apps & games, and cloud services:
 2. **.NET Standard** is a **set of APIs** that **all** .NET platforms **have to implement**. This **unifies the .NET platforms** and **prevents future fragmentation**.
 3. **.NET Standard 2.0** will be implemented by **.NET Framework**, .**NET Core**,
    and **Xamarin**. For **.NET Core**, this will add many of the existing APIs
    that have been requested.
 3. **.NET Standard 2.0** includes a compatibility shim for **.NET Framework** binaries, significantly increasing the set of libraries that you can reference from your .NET Standard libraries.
 4. **.NET Standard** **will replace Portable Class Libraries (PCLs)** as the
    tooling story for building multi-platform .NET libraries.

<div class="text-center">
<img src="https://i.stack.imgur.com/tE1ny.png" class="img-fluid" style="max-width: 500px;"/>
</div>


#### What is the difference between decimal, float and double in .NET?  
**Details:**
When would someone use one of these?

Precision is the main difference.

* Float - 7 digits (32 bit)
* Double-15-16 digits (64 bit)
* Decimal -28-29 significant digits (128 bit)

As for what to use when:

* For values which are "naturally exact decimals" it's good to use decimal. This is usually suitable for any concepts invented by humans: financial values are the most obvious example, but there are others too. Consider the score given to divers or ice skaters, for example.

* For values which are more artefacts of nature which can't really be measured exactly anyway, float/double are more appropriate. For example, scientific data would usually be represented in this form. Here, the original values won't be "decimally accurate" to start with, so it's not important for the expected results to maintain the "decimal accuracy". Floating binary point types are much faster to work with than decimals.


#### What are some characteristics of .NET Core? 
* **Flexible deployment**: Can be included in your app or installed side-by-side user- or machine-wide.

* **Cross-platform**: Runs on Windows, macOS and Linux; can be ported to other OSes. The supported Operating Systems (OS), CPUs and application scenarios will grow over time, provided by Microsoft, other companies, and individuals.

* **Command-line tools**: All product scenarios can be exercised at the command-line.

* **Compatible**: .NET Core is compatible with .NET Framework, Xamarin and Mono, via the .NET Standard Library.

* **Open source**: The .NET Core platform is open source, using MIT and Apache 2 licenses. Documentation is licensed under CC-BY. .NET Core is a .NET Foundation project.

* **Supported by Microsoft**: .NET Core is supported by Microsoft, per .NET Core Support


#### What is an unmanaged resource?  
Use that rule of thumb: 
* If you found it in the Microsoft .NET Framework: _it's managed_. 
* If you went poking around MSDN yourself, _it's unmanaged_. 

Anything you've used P/Invoke calls to get outside of the nice comfy world of everything available to you in the .NET Framwork is unmanaged – and you're now _responsible_ for cleaning it up.


#### What is CTS? 
The **Common Type System (CTS)** standardizes the data types of all programming languages using .NET under the umbrella of .NET to a common data type for easy and smooth communication among these .NET languages. 

CTS is designed as a singly rooted object hierarchy with `System.Object` as the base type from which all other types are derived. CTS supports two different kinds of types: 

1. **Value Types**: Contain the values that need to be stored directly on the stack or allocated inline in a structure. They can be built-in (standard primitive types), user-defined (defined in source code) or enumerations (sets of enumerated values that are represented by labels but stored as a numeric type).
2. **Reference Types**: Store a reference to the value‘s memory address and are allocated on the heap. Reference types can be any of the pointer types, interface types or self-describing types (arrays and class types such as user-defined classes, boxed value types and delegates).


#### What is the difference between .NET Core and Mono? 
To be simple:
* Mono is third party implementation of .Net Framework for Linux/Android/iOs
* .Net Core is Microsoft's own implementation for same.


#### What is MSIL? 
When we compile our .NET code then it is not directly converted to native/binary code; it is first converted into intermediate code known as MSIL code which is then interpreted by the CLR. MSIL is independent of hardware and the operating system. Cross language relationships are possible since MSIL is the same for all .NET languages. MSIL is further converted into native code.  


#### What is a .NET application domain? 
It is an isolation layer provided by the .NET runtime. As such, App domains live with in a process (1 process can have many app domains) and have their own virtual address space.

App domains are useful because:

* They are less expensive than full processes
* They are multithreaded
* You can stop one without killing everything in the process
* Segregation of resources/config/etc
* Each app domain runs on its own security level


#### What is CLR? 
The **CLR** stands for Common Language Runtime and it is an Execution Environment. It works as a layer between Operating Systems and the applications written in .NET languages that conforms to the Common Language Specification (CLS). The main function of Common Language Runtime (CLR) is to convert the Managed Code into native code and then execute the program.


#### Name some CLR services? 
**CLR services**

*   Assembly Resolver
*   Assembly Loader
*   Type Checker
*   COM marshalled
*   Debug Manager
*   Thread Support
*   IL to Native compiler
*   Exception Manager
*   Garbage Collector


## [[⬆]](#toc) <a name=ADO.NET>ADO.NET</a> Interview Questions
#### What is ADO.NET? 
**ADO** stands for Active Data Object and ADO.NET is a set of .NET libraries for ADO.
NET is a collection of managed libraries used by .NET applications for data source communication using a driver or provider:

*   Enterprise applications handle a large amount of data. This data is primarily stored in relational databases, such as Oracle, SQL Server, and Access and so on. These databases use Structured Query Language (SQL) for retrieval of data.  
*   To access enterprise data from a .NET application, an interface was needed. This interface acts as a bridge between an RDBMS system and a .NET application. ADO.NET is such an interface that is created to connect .NET applications to RDBMS systems.  
*   In the .NET framework, Microsoft introduced a new version of Active X Data Objects (ADO) called ADO.NET. Any .NET application, either Windows based or web based, can interact with the database using a rich set of classes of the ADO.NET library. Data can be accessed from any database using connected or disconnected architecture.


#### What is exactly meaning of disconnected and connected approach in ADO.NET? 
In short:
* **Disconnected** = Make Connection , Fetch Data , Close Connection
* **Connected** = Make Connection , Keep Connection alive , Close Connection when close is called.

The ADO.net architecture, in which connection must be kept open till the end to retrieve and access data from database is called as _connected architecture_. Connected architecture is built on the these types - `connection`, `command`, `datareader`

The ADO.net architecture, in which connection will be kept open only till the data retrieved from database, and later can be accessed even when connection to database is closed is called as _disconnected architecture_. Disconnected architecture of ADO.net is built on these types - `connection`, `dataadapter`, `commandbuilder` and `dataset` and `dataview`. 


#### Describe when you would use the DataView in ADO.NET? 
A **DataView** enables you to create different views of the data stored in a DataTable, a capability that is often used in data binding applications. Using a DataView, you can expose the data in a table with different sort orders, and you can filter the data by row state or based on a filter expression. A DataView provides a dynamic view of data whose content, ordering, and membership reflect changes to the underlying DataTable as they occur. This is different from the Select method of the DataTable, which returns a DataRow array from a table per particular filter and/or sort order and whose content reflects changes to the underlying table, but whose membership and ordering remain static. The dynamic capabilities of the DataView make it ideal for data-binding applications.


#### What is the SqlCommandBuilder? 
**CommandBuilder** helps you to generate update, delete, and insert commands on a single database table for a data adapter. Similar to other objects, each data provider has a command builder class. The OleDbCommandBuilder, SqlCommonBuilder, and OdbcCommandBuilder classes represent the CommonBuilder object in the OleDb, Sql, and ODBC data providers.


#### What is the DataAdapter Object in ADO.NET? 
A **DataAdapter** is used to retrieve data from a data source and populate tables within a `DataSet`. Data Adapters form the bridge between a data source and a dataset. The `DataAdapter` also resolves changes made to the `DataSet` back to the data source. The `DataAdapter` uses the `Connection` object of the .NET Framework data provider to connect to a data source, and it uses `Command` objects to retrieve data from and resolve changes to the data source.

A `DataAdapter` supports mainly the following two methods:

*   **Fill():** The Fill method populates a dataset or a data table object with data from the database. It retrieves rows from the data source using the SELECT statement specified by an associated select command property. The Fill method leaves the connection in the same state as it encountered before populating the data.     
*   **Update():** The Update method commits the changes back to the database. It also analyzes the RowState of each record in the DataSet and calls the appropriate INSERT, UPDATE, and DELETE statements.


#### What is the basic difference between ADO.NET and Entity Framework? 
ADO.NET Entity Framework is an ORM (object-relational mapping) which creates a higher abstract object model over ADO.NET components. ADO.NET is a layer closer to the database (datatables, datasets and etc...). The main and the only benefit of EF is it auto-generates code for the Model (middle layer), Data Access Layer, and mapping code, thus reducing a lot of development time. Consider the following example:

**ADO.NET**:
```csharp
DataTable table = adoDs.Tables[0];
for (int j = 0; j < table.Rows.Count; j++)
{
    DataRow row = table.Rows[j];

    // Get the values of the fields
    string CustomerName =
        (string)row["Customername"];
    string CustomerCode =
        (string)row["CustomerCode"];
}
```

**EF**:
```csharp
foreach (Customer objCust in obj.Customers)
{}
```


#### What is Connection Pooling in ADO.NET? 
ADO.NET uses a technique called **connection pooling**, which minimizes the cost of repeatedly opening and closing connections. Connection pooling reuses existing active connections with the same connection string instead of creating new connections when a request is made to the database. It involves the use of a connection manager that is responsible for maintaining a list, or pool, of available connections for a given connection string. Several pools exist if different connection strings ask for connection pooling.


#### What is SqlCommand Object? 
The **SqlCommand** carries the SQL statement that needs to be executed on the database. SqlCommand carries the command in the CommandText property and this property will be used when the SqlCommand calls any of its execute methods.

*   The Command Object uses the connection object to execute SQL queries.
*   The queries can be in the form of Inline text, Stored Procedures or direct Table access.
*   An important feature of Command object is that it can be used to execute queries and Stored Procedures with Parameters.
*   If a select query is issued, the result set it returns is usually stored in either a DataSet or a DataReader object.

The three important methods exposed by the SqlCommand object is shown below:

*   ExecuteScalar
*   ExecuteNonQuery
*   ExecuteReader


#### What are the ADO.NET components? 
ADO.NET components categorized in three modes: 
* disconnected, 
* common or shared and 
* the .NET data providers.

The disconnected components build the basic ADO.NET architecture. You can use these components (or classes) with or without data providers. For example, you can use a `DataTable` object with or without providers and shared or common components are the base classes for data providers. Shared or common components are the base classes for data providers and shared by all data providers. The data provider components are specifically designed to work with different kinds of data sources. For example, ODBC data providers work with ODBC data sources and OleDb data providers work with OLE-DB data sources.


#### How can you define the DataSet structure? 
A **DataSet** object falls in disconnected components series. The `DataSet` consists of a collection of tables, rows, columns and relationships.

`DataSet` contains a collection of `DataTables` and the `DataTable` contains a collection of `DataRows`, `DataRelations`, and `DataColumns`. A `DataTable` maps to a table in the database.


#### What do you understand by DataRelation class? 
The **DataRelation** is a class of disconnected architecture in the .NET framework. It is found in the System.Data namespace. It represents a relationship between database tables and correlates tables on the basis of matching column.


## [[⬆]](#toc) <a name=ASP.NET>ASP.NET</a> Interview Questions
#### What is ViewData? 
Viewdata contains the key, value pairs as dictionary and this is derived from class — “ViewDataDictionary“. In action method we are setting the value for viewdata and in view the value will be fetched by typecasting.


#### What is ASP.Net? 
It is a framework developed by Microsoft on which we can develop new generation web sites using web forms(aspx), MVC, HTML, Javascript, CSS etc. Its successor of Microsoft Active Server Pages(ASP). Currently there is ASP.NET 4.0, which is used to develop web sites. There are various page extensions provided by Microsoft that are being used for web site development. Eg: aspx, asmx, ascx, ashx, cs, vb, html, XML etc. 



#### Talk about Logging in ASP.NET Core? 
**Logging** is built-in and you get access to structured logs from the ASP.NET Core host itself to your application. With tools like [Serilog,](https://github.com/serilog/serilog-aspnetcore) you can extend your logging [easily](https://github.com/serilog/serilog-sinks-rollingfile) and save your logs to file, Azure, Amazon or any other output provider. You can configure verbosity and log levels via configuration (appsettings.json by default), and you can configure log levels by different categories.


#### Explain startup process in ASP.NET Core? 
Everything starts from Program.cs
```csharp
public static void Main(string[] args)
{
    BuildWebHost(args).Run();
}
 
public static IWebHost BuildWebHost(string[] args) =>
    WebHost.CreateDefaultBuilder(args)
        .UseStartup<Startup>()
        .Build();
```

CreateDefaultBuilder extension method will create a default configuration which will look first into `appsettings.json` files then will look for Environment variables and at the end, it will use command line arguments.

This part will also set up default logger sources (debug and console) and load the settings for logging from appsettings.json.

After the `CreateDefaultBuilder` finishes, then `Startup` class is executed. First, the constructor code is executed. After that, services are added to DI container via `AddServices` method that lives in Startup class. After that, an order of middleware that will handle every incoming request is set up.


#### What exactly is an application pool? What is its purpose? 
**Application pools** allow you to isolate your applications from one another, even if they are running on the same server. This way, if there is an error in one app, it won't take down other applications.

Additionally, applications pools allow you to separate different apps which require different levels of security.


#### How you can add an event handler? 
** **Using the Attributes property of server side control. 

e.g. 
```csharp
btnSubmit.Attributes.Add("onMouseOver","JavascriptCode();")
```


#### What's the use of Response.Output.Write()? 
We can write formatted output using Response.Output.Write(). 


#### How to configure your ASP.NET Core app? 
Another crucial part of ASP.NET Core Framework is Configuration. Also, it is part of Dependency Injection. Use it anywhere in your code with an option to [reload on changes](https://codingblast.com/asp-net-core-configuration-reloading-binding-injecting/) of configuration values from sources (appsettings.json, environment variables, command line arguments, etc.). It is also easy to override, extend and customize the Configuration. No more extensive configurations in web.config, the preferred way now is _**appsettings.json**_ in combination with a mix of Environment variables and cmd-line args.


#### What is ASP.NET Core? 
ASP.NET Core is a brand new cross-platform web framework built with .NET Core framework. It is not an update to existing ASP.NET framework. It is a complete rewrite of the ASP.NET framework. It works with both .NET Core and .NET Framework.

Main characterestics of ASP.NET Core:

*   DI Container which is quite simple and built-in. You can extend it with other popular DI containers
*   Built-in and extensible structured logging. You can redirect output to as many sources as you want (file, Azure, AWS, console)
*   Extensible strongly typed configuration, which can also be used to reload at run-time
*   Kestrel – new, cross-platform and super fast web server which can stand alone without IIS, Nginx or Apache
*   New, fully async pipeline. It is easily configured via middleware
*   ASP.NET All meta package which improves development speed, and enables you to reference all Microsoft packages for ASP.NET Core and it will deploy only those that are being used by your code
*   There is no _web.config_. We now use _appsettings.json_ file in combination with other sources of configuration (command line args, environment variables, etc.)
*   There is no _Global._asax – We have _Startup.cs_ which is used to set up Middleware and services for DI Container.


#### What is the difference between ASP.NET and ASP.NET MVC? 
ASP.NET, at its most basic level, provides a means for you to provide general HTML markup combined with server side "controls" within the event-driven programming model that can be leveraged with VB, C#, and so on. You define the page(s) of a site, drop in the controls, and provide the programmatic plumbing to make it all work.

ASP.NET MVC is an application framework based on the Model-View-Controller architectural pattern. This is what might be considered a "canned" framework for a specific way of implementing a web site, with a page acting as the "controller" and dispatching requests to the appropriate pages in the application. The idea is to "partition" the various elements of the application, eg business rules, presentation rules, and so on.

Think of the former as the "blank slate" for implementing a site architecture you've designed more or less from the ground up. MVC provides a mechanism for designing a site around a pre-determined "pattern" of application access, if that makes sense. There's more technical detail to it than that, to be sure, but that's the nickel tour for the purposes of the question.


#### What is ViewState? 
**View State** is the method to preserve the Value of the Page and Controls between round trips. It is a Page-Level State Management technique. View State is turned on by default and normally serializes the data in every control on the page regardless of whether it is actually used during a post-back.  
  
A web application is stateless. That means that a new instance of a page is created every time when we make a request to the server to get the page and after the round trip our page has been lost immediately  


#### Can ASP.NET Core work with the .NET framework? 
Yes. This might surprise many, but ASP.NET Core works with .NET framework and this is officially supported by Microsoft.

ASP.NET Core works with:

*   .NET Core framework
*   .NET framework


#### What is the good practice to implement validations in aspx page? 
Client-side validation is the best way to validate data of a web page. It reduces the network traffic and saves server resources. 


#### What is a postback? 
A **postback** originates from the client browser. Usually one of the controls on the page will be manipulated by the user (a button clicked or dropdown changed, etc), and this control will initiate a postback. The state of this control, plus all other controls on the page (known as the View State) is Posted Back to the web server.


#### What is the file extension of ASP.NET web service? 
Web services have file extension `.asmx`.


## [[⬆]](#toc) <a name=ASP.NETMVC>ASP.NET MVC</a> Interview Questions
#### What is Layout in MVC? 
Layout pages are similar to master pages in traditional web forms. This is used to set the common look across multiple pages. In each child page we can find —

```html
@{
Layout = “~/Views/Shared/TestLayout1.cshtml”;
}
```

This indicates child page uses TestLayout page as it’s master page.


#### Explain Bundle.Config in MVC4? 
**“BundleConfig.cs”** in MVC4 is used to register the bundles by the bundling and minification system. Many bundles are added by default including jQuery libraries like — jquery.validate, Modernizr, and default CSS references.


#### What is Razor View Engine? 
**Razor** is the first major update to render HTML in MVC 3. Razor was designed specifically for view engine syntax. Main focus of this would be to simplify and code-focused templating for HTML generation. Below is the sample of using Razor:

```html
@model MvcMusicStore.Models.Customer
@{ViewBag.Title = “Get Customers”;}
<div class=”cust”> <h3><em>@Model.CustomerName</em> </h3>
```



#### What is the use of ViewModel in MVC? 
ViewModel is a plain class with properties, which is used to bind it to strongly typed view. ViewModel can have the validation rules defined for its properties using data annotations.


#### What you mean by Routing in MVC? 
**Routing** is a pattern matching mechanism of incoming requests to the URL patterns which are registered in route table. Class — “UrlRoutingModule” is used for the same process.


#### What are Actions in MVC? 
**Actions** are the methods in Controller class which is responsible for returning the view or json data. Action will mainly have return type — “ActionResult” and it will be invoked from method — “InvokeAction()” called by controller.


#### What are the advantages of MVC over ASP.NET? 
* Provides a clean separation of concerns among UI (Presentation layer), model (Transfer objects/Domain Objects/Entities) and Business Logic (Controller).
* Easy to UNIT Test
* Improved reusability of model and views. We can have multiple views which can point to the same model and vice versa.
* Improved structuring of the code


#### What are Scaffold templates in MVC? 
Scaffolding in ASP.NET MVC is used to generate the Controllers, Model and Views for create, read, update, and delete (CRUD) functionality in an application. The scaffolding will be knowing the naming conventions used for models and controllers and views.


#### Can you explain Model, Controller and View in MVC? 
* **Model** — It’s a business entity and it is used to represent the application data.
* **Controller** — Request sent by the user always scatters through controller and it’s responsibility is to redirect to the specific view using View() method.
* **View** — It’s the presentation layer of MVC.


#### What is Razor Pages? 
[Razor Pages](https://codingblast.com/asp-net-core-razor-pages/) is a new feature of ASP.NET Core that makes coding page-focused scenarios easier and more productive.

With Razor Pages, you have this one Razor file (_.cshtml_), and the code for a single page lives inside of that file, and that file also represents the URL structure of the app. Therefore, you got everything inside of one file, and it just works.

However, you can separate your code to the _code behind_ file with _.cshtml.cs_ extension. You would usually have your view model and handlers (like action methods in MVC) in that file and handle the logic there. Of course, you could also have your view model moved to separate place.

Since Razor Pages is part of the MVC stack, you can use anything that comes with MVC inside of our Razor Pages.


#### Explain Sections is MVC? 
Section are the part of HTML which is to be rendered in layout page. In Layout page we will use the below syntax for rendering the HTML –

```html
@RenderSection(“TestSection”)
```

And in child pages we are defining these sections as shown below –

```html
@section TestSection{
     <h1>Test Content</h1>
}
```


#### What are Non Action methods in MVC? 
In MVC all public methods have been treated as Actions. So if you are creating a method and if you do not want to use it as an action method then the method has to be decorated with "NonAction" attribute as shown below:

```csharp
[NonAction]
public void TestMethod()
{
   // Method logic
}
```


## [[⬆]](#toc) <a name=ASP.NETWebAPI>ASP.NET Web API</a> Interview Questions
#### What is ASP.NET Web API? 
ASP.NET Web API is a framework that simplifies building HTTP services for broader range of clients (including browsers as well as mobile devices) on top of .NET Framework.

Using ASP.NET Web API, we can create non-SOAP based services like plain XML or JSON strings, etc. with many other advantages including:

*   Create resource-oriented services using the full features of HTTP
*   Exposing services to a variety of clients easily like browsers or mobile devices, etc.


#### Which status code used for all uncaught exceptions by default? 
**500** – Internal Server Error

Consider:
```csharp
[Route("CheckId/{id}")]
[HttpGet]
public IHttpActionResult CheckId(int id)
{
    if(id > 100)
    {
        throw new ArgumentOutOfRangeException();
    }
    return Ok(id);
}
```
And the result:
<div class="text-center">
<img src="https://www.exceptionnotfound.net/content/images/2015/09/checkid_invalid.png" class="img-fluid" style="max-width: 500px"/>
</div>


#### What are the Advantages of Using ASP.NET Web API? 
Using ASP.NET Web API has a number of advantages, but core of the advantages are:

*   It works the HTTP way using standard HTTP verbs like `GET`, `POST`, `PUT`, `DELETE`, etc. for all CRUD operations
*   Complete support for routing
*   Response generated in JSON or XML format using `MediaTypeFormatter`
*   It has the ability to be hosted in IIS as well as self-host outside of IIS
*   Supports Model binding and Validation
*   Support for OData


#### What New Features are Introduced in ASP.NET Web API 2.0? 
More new features introduced in ASP.NET Web API framework v2.0 are as follows:

*   Attribute Routing
*   External Authentication
*   CORS (Cross-Origin Resource Sharing)
*   OWIN (Open Web Interface for .NET) Self Hosting
*   `IHttpActionResult`
*   Web API OData


#### What exactly is OAuth (Open Authorization)? 
**OAuth** (Open Authorization) is an open standard for access granting/deligation protocol. It used as a way for Internet users to grant websites or applications access to their information on other websites but without giving them the passwords. It does not deal with authentication.

Basically there are three parties involved: oAuth Provider, oAuth Client and Owner.

* oAuth Client (Application Which wants to access your credential)
* oAuth Provider (eg. facebook, twitter...)
* Owner (the person with facebook,twitter.. account )


#### Explain the usage of HttpResponseMessage? 
`HttpResponseMessage` works with HTTP protocol to return the data with status/error. 


#### What is the difference between ApiController and Controller? 
* Use **Controller** to render your normal views. 
* **ApiController** action only return data that is serialized and sent to the client.

Consider:
```csharp
public class TweetsController : Controller {
  // GET: /Tweets/
  [HttpGet]
  public ActionResult Index() {
    return Json(Twitter.GetTweets(), JsonRequestBehavior.AllowGet);
  }
}
```
or
```csharp
public class TweetsController : ApiController {
  // GET: /Api/Tweets/
  public List<Tweet> Get() {
    return Twitter.GetTweets();
  }
}
```


#### What are main return types supported in Web API? 
A Web API controller action can return following values:

*   Void – It will return empty content
*   HttpResponseMessage – It will convert the response to an HTTP message.
*   IHttpActionResult – internally calls ExecuteAsync to create an HttpResponseMessage
*   Other types – You can write the serialized return value into the response body


## [[⬆]](#toc) <a name=AWS>AWS</a> Interview Questions
#### What is AWS? 
**AWS** stands for Amazon Web Services and is a platform that provides database storage, secure cloud services, offering to compute power, content delivery, and many other services to develop business levels.


#### Explain the key components of AWS? 
* **Simple Storage Service (S3)**: S3 is most widely used AWS storage web service.
* **Simple E-mail Service (SES)**: SES is a hosted transactional email service and allows one to fluently send deliverable emails using a RESTFUL API call or through a regular SMTP.
* **Identity and Access Management (IAM)**: IAM provides improved identity and security management for AWS account.
* **Elastic Compute Cloud (EC2)**: EC2 is an AWS ecosystem central piece. It is responsible for providing on-demand and flexible computing resources with a “pay as you go” pricing model.
* **Elastic Block Store (EBS)**: EBS offers continuous storage solution that can be seen in instances as a regular hard drive.
* **CloudWatch**: CloudWatch allows the controller to outlook and gather key metrics and also set a series of alarms to be notified if there is any trouble.


#### What is buckets in AWS? 
An Amazon S3 bucket is a public cloud storage resource available in Amazon Web Services' (AWS) Simple Storage Service (S3), an object storage offering. Amazon S3 buckets, which are similar to file folders, store objects, which consist of data and its descriptive metadata.

By default, you can create up to 100 buckets in each of your AWS accounts. If you need more buckets, you can increase your bucket limit by submitting a service limit increase.


#### What is AWS Cloudfront? 
Amazon **CloudFront** is a content delivery network (CDN) offered by Amazon Web Services. Content delivery networks provide a globally-distributed network of proxy servers which cache content, such as web videos or other bulky media, more locally to consumers, thus improving access speed for downloading the content.


#### What do you mean by AMI? What does it include? 
**AMI** stands for the term **Amazon Machine Image**.  It’s an AWS template which provides the information (an application server, and operating system, and applications) required to perform the launch of an instance. This AMI is the copy of the AMI that is running in the cloud as a virtual server.  You can launch instances from as many different AMIs as you need. AMI consists of the followings:

* A root volume template for an existing instance
* Launch permissions to determine which AWS accounts will get the AMI in order to launch the instances
* Mapping for block device to calculate the total volume that will be attached to the instance at the time of launch


#### How can I download a file from EC2? 
Use scp:

```sh
scp -i ec2key.pem username@ec2ip:/path/to/file .
```


#### Is it possible to clone a EC2 instance data? 
You can make an AMI of an existing instance, and then launch other instances using that AMI.


#### What is AWS Data Pipeline? 
**AWS Data Pipeline** is a web service that you can use to automate the movement and transformation of data. With AWS Data Pipeline, you can define data-driven workflows, so that tasks can be dependent on the successful completion of previous tasks.


#### Explain the features of Amazon EC2 services 
Amazon EC2 services have following features:

* Virtual Computing Environments
* Proffers Persistent storage volumes
* Firewall validating you to specify the protocol
* Pre-configured templates
* Static IP address for dynamic Cloud Computing


#### What is the connection between AMI and Instance? 
Many different types of *instances* can be launched from one *AMI*. The type of an instance generally regulates the hardware components of the host computer that is used for the instance. Each type of instance has distinct computing and memory efficacy.

Once an instance is launched, it casts as host and the user interaction with it is same as with any other computer but we have a completely controlled access to our instances. AWS developer interview questions may contain one or more AMI based questions, so prepare yourself for the AMI topic very well.


#### Are S3 buckets region specific? 
Yes, buckets exist in a specific region and you need to specify that region when you create a bucket. Amazon S3 creates bucket in a region you specify. You can choose any AWS region that is geographically close to you to optimize latency, minimize costs, or address regulatory requirements.


#### What is AWS Direct Connect? 
**AWS Direct Connect** bypasses the public Internet and establishes a secure, dedicated connection from your infrastructure into AWS. With established connectivity via AWS Direct Connect, you can access your Amazon VPC and all AWS services.


#### What is AWS EBS? 
**Amazon Elastic Block Store** (Amazon EBS) provides persistent block storage volumes for use with Amazon EC2 instances in the AWS Cloud. Each Amazon EBS volume is automatically replicated within its Availability Zone to protect you from component failure, offering high availability and durability.


#### What is AWS Lambda? 
**AWS Lambda** is a serverless compute service that runs your code in response to events and automatically manages the underlying compute resources for you. You can use AWS Lambda to extend other AWS services with custom logic, or create your own back-end services that operate at AWS scale, performance, and security.


#### What is AWS DynamoDB? 
**Amazon DynamoDB** is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. With DynamoDB, you can create database tables that can store and retrieve any amount of data, and serve any level of request traffic.


#### What is AWS EMR? 
**Amazon Elastic MapReduce (EMR)** is an Amazon Web Services (AWS) tool for big data processing and analysis. Amazon EMR offers the expandable low-configuration service as an easier alternative to running in-house cluster computing.

Amazon EMR is based on Apache Hadoop, a Java-based programming framework that supports the processing of large data sets in a distributed computing environment. MapReduce is a software framework that allows developers to write programs that process massive amounts of unstructured data in parallel across a distributed cluster of processors or stand-alone computers.


#### Is data stored in S3 is always encrypted? 
By default data on S3 is not encrypted, but all you could enable server-side encryption in your object metadata when you upload your data to Amazon S3. As soon as your data reaches S3, it is encrypted and stored.


#### Can we attach single EBS to multiple EC2s same time? 
No. After you create a volume, you can attach it to any EC2 instance in the same Availability Zone. An EBS volume can be attached to **only one EC2 instance at a time**, but multiple volumes can be attached to a single instance.


#### What is AWS API gateway? 
Amazon **API Gateway** is an AWS service that enables developers to create, publish, maintain, monitor, and secure APIs at any scale. You can create APIs that access AWS or other web services, as well as data stored in the AWS Cloud.


#### What is AWS Direct Connect? 
Using **AWS Direct Connect**, you can establish private connectivity between AWS and your datacenter, office, or colocation environment, which in many cases can reduce your network costs, increase bandwidth throughput, and provide a more consistent network experience than Internet-based connections.


## [[⬆]](#toc) <a name=Agile&Scrum>Agile & Scrum</a> Interview Questions
#### What is ASP.NET MVC? 
ASP.NET MVC is a web application Framework. It is light weight and highly testable Framework. MVC separates application into three components — Model, View and Controller.


#### What is Scrum? 
**Scrum** is one of the most popular frameworks for implementing *Agile*. Many people think scrum and agile are the same thing but they're not.

With scrum, the product is built in a series of fixed-length iterations called sprints that give teams a framework for shipping software on a regular cadence.


#### What is sprint in Scrum? 
In the Scrum methodology a **sprint** is the basic unit of development. Scrum sprints correspond to Agile iterations. 

Each sprint starts with 
* a **planning meeting**, where the tasks for the sprint are identified and an estimated commitment for the **sprint goal** is made. 

A Sprint ends with 
* a **review or retrospective meeting** where the progress is reviewed and lessons for the next sprint are identified. During each sprint, the team creates finished portions of a product.


#### Name roles in Scrum 
Three essential roles for scrum success are:
* **The Product Owner** are the champions for their product. They are focused on understanding business and market requirements, then prioritizing the work to be done by the engineering team accordingly.
* ** The Scrum Master** are the champion for scrum within their team. They coach the team, the product owner, and the business on the scrum process and look for ways to fine-tune their practice of it.
* **The Scrum Team** are the champions for sustainable development practices. Scrum teams are cross-functional, "the development team" includes testers, designers, and ops engineers in addition to developers. 


#### What is User Stories? 
**User stories** are features customers might want to see in their software. They are written on index cards to encourage face-to-face communication. Typically no more than a couple days work, they form the basis of our Agile plans.

#### What is an epic, user stories and task? 
**Epic:** A customer described software feature that is itemized in the product backlog is known as epic. Epics are sub-divided into stories.

**User Stories:** From the client perspective user stories are prepared which defines project or business functions, and it is delivered in a particular sprint as expected.

**Task:** Further down user stories are broken down into different task


#### Explain what is Refactoring? 
To improve the performance, the existing code is modified; this is re-factoring. During re-factoring the code functionality remains same.


#### What is an Agile iteration? 
An Agile **iteration** is a short one to two week period where a team takes most important user stories,  builds them completely and deliver as running-tested-software to the customer. Analysis, design, coding, testing happen during an iteration.

#### Name some types of meetings or ceremonies in Scrum 
Scrum calls for four ceremonies that bring structure to each sprint:

* **Sprint planning**: A team planning meeting that determines what to complete in the coming sprint.
* **Daily stand-up**: Also known as a daily scrum, a 15-minute mini-meeting for the software team to sync.
* **Sprint demo**: A sharing meeting where the team shows what they've shipped in that sprint.
* **Sprint retrospective**: A review of what did and didn't go well with actions to make the next sprint better.



#### If a timebox plan needs to be reprioritized who should re-prioritise it? 
If a timebox plan needs to be reprioritized it should include whole team, product owner, and developers.


#### Mention the key difference between sprint backlog and product backlog? 
* **Product backlog**: It contains a list of all desired features and is owned by the product owner

* **Sprint backlog**: It is a subset of the product backlog owned by development team and commits to deliver it in a sprint. It is created in Sprint Planning Meeting


#### What is Agile? 
**Agile** is a time boxed, **iterative approach (framework) to software delivery** that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.

It works by breaking projects down into little bits of user functionality called **user stories**, prioritizing them, and then continuously delivering them in short two week cycles called **iterations**.

Agile refers to any process that aligns with the concepts of the [Agile Manifesto](http://agilemanifesto.org/). 


#### Explain in Agile, burn-up and burn-down chart? 
To track the project progress burnup and burn down, charts are used

* Burnup Chart: It shows the progress of stories done over time
* Burndown Chart: It shows how much work was left to do overtime


#### What is Sprint Planning? 
The work to be performed in the Sprint is planned at the **Sprint Planning**. This plan is created by the collaborative work of the entire Scrum Team.

Sprint Planning answers the following:

* What can be delivered in the Increment resulting from the upcoming Sprint?
* How will the work needed to deliver the Increment be achieved?

The Sprint Goal is an objective set for the Sprint that can be met through the implementation of Product Backlog. 


#### Explain difference between a Product and a Sprint Backlog 
* The **Product Backlog** is an ordered list of everything that is known to be needed in the product. It is the single source of requirements for any changes to be made to the product.

* The **Sprint Backlog** is the set of Product Backlog items selected for the Sprint during the Sprint Planning, plus a plan for delivering the product Increment and realizing the Sprint Goal. 


#### What is story points/efforts/ scales? 
It is used to discuss the difficulty of the story without assigning actual hours. The most common scale used is a Fibonacci sequence (1, 2, 3, 5, 8,1 3,….100) although some teams use linear scale (1, 2, 3, 4….), Powers of 2 (1, 2, 4, 8……) and cloth size (XS, S ,M, L, XL)


#### How is Agile different from other software delivery aproaches? 
* Analysis, design, coding, and testing are continuous activities
* Development is iterative
* Planning is adaptive
* Roles blur
* Scope can vary
* Requirements can change
* Working software is the primary measure of success



#### Have you ever used Scrum Task Board? 
In Scrum the *task board* is a visual display of the progress of the Scrum team during a sprint. It presents a snapshot of the current sprint backlog allowing everyone to see which tasks remain to be started, which are in progress and which are done.

Consider the following layout of the task board:
- Stories
- To Do
- In Progress
- Testing
- Done


#### Explain what does it mean by product roadmap? 
A **product roadmap** is referred for the holistic view of product features that create the product vision.


#### Explain what is Velocity in Agile? 
**Velocity** is a metric that is calculated by addition of all efforts estimates related with user stories completed in an iteration. It figures out how much work Agile can complete in a sprint and how much time will it need to finish a project.


#### Mention what should a burndown chart should highlight? 
The burn-down chart shows the remaining work to complete before the timebox (iteration) ends.


#### What is test driven development? 
**Test driven development (TDD)** is also known as test-driven design. In this method, developer first writes an automated test case which describes new function or improvement and then creates small codes to pass that test, and later re-factors the new code to meet the acceptable standards.


## [[⬆]](#toc) <a name=Android>Android</a> Interview Questions
#### Mention the difference between RelativeLayout and LinearLayout? 
* **Linear Layout** — Arranges elements either vertically or horizontally. i.e. in a row or column.
* **Relative Layout** — Arranges elements relative to parent or other elements.


#### What is the difference between Bitmap and Drawable in Android? 
* A **Bitmap** is a representation of a bitmap image (something like java.awt.Image).
* A **Drawable** is an abstraction of "something that can be drawn". It could be a Bitmap (wrapped up as a BitmapDrawable), but it could also be a solid color, a collection of other Drawable objects, or any number of other structures.


#### What is a difference between Spannable and String? 
A **Spannable** allows to attach formatting information like bold, italic, ... to sub-sequences ("spans", thus the name) of the characters. It can be used whenever you want to represent "rich text".


#### What is an Activity? 
An **activity** provides the window in which the app draws its UI. This window typically fills the screen, but may be smaller than the screen and float on top of other windows. Generally, one activity implements one screen in an app. For instance, one of an app’s activities may implement a Preferences screen, while another activity implements a Select Photo screen.


#### What is Armv7? 
There are 3 CPU architectures in Android:

* **_ARMv7_**  is the most common as it is optimised for battery consumption.
*  **_ARM64_**  is an evolved version of that that supports 64-bit processing for more powerful computing.
*  **_ARMx86_**, is the least used for these three, since it is not battery friendly. It is more powerful than the other two.


#### Explain activity lifecycle 
As a user navigates through, out of, and back to your app, the Activity instances in your app transition through different states in their lifecycle.

To navigate transitions between stages of the activity lifecycle, the Activity class provides a core set of six callbacks: `onCreate()`, `onStart()`, `onResume()`, `onPause()`, `onStop()`, and `onDestroy()`. The system invokes each of these callbacks as an activity enters a new state. 

<div class="text-center"/>
<img src="https://developer.android.com/guide/components/images/activity_lifecycle.png" class="img-fluid" />
</div>



#### How can I get the context in a fragment? 
You can use `getActivity()`, which returns the activity associated with a fragment. The activity is a context (since Activity extends `Context`).

You can also override the `onAttach` method of fragment:

```java
public static class DummySectionFragment extends Fragment{
...
    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        DBHelper = new DatabaseHelper(activity);
    }
}
```


#### What is View Group? How are they different from Views? 
**View:** View objects are the basic building blocks of User Interface(UI) elements in Android. View is a simple rectangle box which responds to the user’s actions. Examples are EditText, Button, CheckBox etc. View refers to the `android.view.View` class, which is the base class of all UI classes.

**ViewGroup:** ViewGroup is the invisible container. It holds View and ViewGroup. For example, LinearLayout is the ViewGroup that contains Button(View), and other Layouts also. ViewGroup is the base class for Layouts.


#### Is it possible to implement the model–view–controller pattern in Java for Android? 
In Android you **don't have MVC**, but you have the following:

* You define your user interface in  various XML files by resolution, hardware, etc.
* You define your resources in various XML files by locale, etc.
* You extend clases like ListActivity, TabActivity and make use of the XML file by inflaters.
* You can create as many classes as you wish for your business logic.
* A lot of Utils have been already written for you - DatabaseUtils, Html.


#### What’s the difference between onCreate() and onStart()? 
*   The `onCreate()` method is called once during the Activity lifecycle, either when the application starts, or when the Activity has been destroyed and then recreated, for example during a configuration change.
*   The `onStart()` method is called whenever the Activity becomes visible to the user, typically after `onCreate()` or `onRestart()`.


#### Explain the build process in Android 
1.  First step involves compiling the resources folder (/res) using the aapt (android asset packaging tool) tool. These are compiled to a single class file called R.java. This is a class that just contains constants.
2.  Second step involves the java source code being compiled to .class files by javac, and then the class files are converted to Dalvik bytecode by the “dx” tool, which is included in the sdk ‘tools’. The output is classes.dex.
3.  The final step involves the android apkbuilder which takes all the input and builds the apk (android packaging key) file.


#### What is an Intent in Android? 
An Intent is basically a message that is passed between components (such as Activities, Services, Broadcast Receivers, and Content Providers).So, it is almost equivalent to parameters passed to API calls. The fundamental differences between API calls and invoking components via intents are:

* API calls are synchronous while intent-based invocations are asynchronous.
* API calls are compile-time binding while intent-based calls are run-time binding.

To listen for an broadcast intent (like the phone ringing, or an SMS is received), you implement a **broadcast receiver**, which will be passed the intent. To declare that you can handle another's app intent like "take picture", you declare an intent filter in your app's manifest file.

If you want to fire off an intent to do something, like pop up the dialer, you fire off an intent saying you will.

An Intent provides a facility for performing late runtime binding between the code in different applications. 


#### What is the most appropriate way to store user settings in Android application? 
In general **SharedPreferences** are your best bet for storing preferences, so in general I'd recommend that approach for saving application and user settings.

The only area of concern here is what you're saving. Passwords are always a tricky thing to store, and I'd be particularly wary of storing them as clear text. The Android architecture is such that your application's SharedPreferences are sandboxed to prevent other applications from being able to access the values so there's some security there, but physical access to a phone could potentially allow access to the values.


#### In what situation should one use RecyclerView over ListView? 
**RecyclerView** was created as a **ListView** improvement, so yes, you can create an attached list with **ListView** control, but using **RecyclerView** is easier as it:

* Reuses cells while scrolling up/down - this is possible with implementing View Holder in the ListView adapter, but it was an optional thing, while in the RecycleView it's the default way of writing adapter.
* Decouples list from its container - so you can put list items easily at run time in the different containers (linearLayout, gridLayout) with setting LayoutManager.

To conclude, **RecyclerView** is a more flexible control for handling "list data" that follows patterns of delegation of concerns and leaves for itself only one task - recycling items.


#### Explain briefly all the Android application components 
**App components** are the essential building blocks of an Android app. Each component is an entry point through which the system or a user can enter your app.

There are four different types of app components:

* **Activities** - An activity is the entry point for interacting with the user. It represents a single screen with a user interface.
* **Services** - A service is a general-purpose entry point for keeping an app running in the background for all kinds of reasons. It is a component that runs in the background to perform long-running operations or to perform work for remote processes.
* **Broadcast receivers** - A broadcast receiver is a component that enables the system to deliver events to the app outside of a regular user flow, allowing the app to respond to system-wide broadcast announcements.
* **Content providers** - A content provider manages a shared set of app data that you can store in the file system, in a SQLite database, on the web, or on any other persistent storage location that your app can access.


#### What is 'Context' on Android? 
The documentation itself provides a rather straightforward explanation: The Context class is an “Interface to global information about an application environment".

We may assume a **Context** is a handle to the system; it provides services like resolving resources, obtaining access to databases and preferences, and so on. An Android app has activities. Context is like a handle to the environment your application is currently running in. The activity object inherits the Context object.


#### What is the Dalvik Virtual Machine? 
The **Dalvik Virtual Machine (DVM)** is an android virtual machine optimized for mobile devices. It optimizes the virtual machine for memory, battery life and performance.

The Dex compiler converts the class files into the `.dex` file that run on the Dalvik VM. Multiple class files are converted into one dex file.


#### Tell about Constraint Layout 
**ConstraintLayout** allows you to create large and complex layouts with a flat view hierarchy (no nested view groups). It's similar to **RelativeLayout** in that all views are laid out according to relationships between sibling views and the parent layout, but it's more flexible than RelativeLayout and easier to use with Android Studio's Layout Editor.

Intention of ConstraintLayout is to optimize and flatten the view hierarchy of your layouts by applying some rules to each view to avoid nesting.


#### What is ADB and what is it used for? 
**ADB** is the acronym for Android Debug Bridge, which is part of the Android SDK (Software Development Kit). It uses a client-server-model (i.e. adbd, the ADB daemon, is running on the device and can be connected to), and in most cases is used via an USB connection. It is also possible to use it via WiFi (wireless adb).

There's nothing you need to install on your Android device, as the ADB daemon (adbd) is already integrated into the Android OS. It is usually accessed via a command line interface from the PC, where either the full Android SDK is installed (several 30 MB download archive currently), or a massively stripped-down version for "non-developers", sometimes referred to as "Mini ADB" or "ADB essentials" (for Linux, this is only the adb executable; for Windows it's adb.exe plus two or three .dll files).


#### What is Dalvik? 
**Dalvik** is a Just In Time (JIT) compiler. By the term JIT, we mean to say that whenever you run your app in your mobile device then that part of your code that is needed for execution of your app will only be compiled at that moment and rest of the code will be compiled in the future when needed. The JIT or Just In Time compiles only a part of your code and it has a smaller memory footprint and due to this, it uses very less physical space on your device.


#### What types of Context do you know? 
The are mainly two types of context:

* **Application Context**: It is an instance that is the singleton and can be accessed in activity via `getApplicationContext()`. This context is tied to the lifecycle of an application. The application context can be used where you need a context whose lifecycle is separate from the current context or when you are passing a context beyond the scope of activity.

* **Activity Contex**t: This context is tied to the lifecycle of an activity. The activity context should be used when you are passing the context in the scope of an activity or you need the context whose lifecycle is attached to the current context.


#### How do I pass data between Activities in Android application? 
**Details:**
I have a scenario where, after logging in through a login page, there will be a sign-out button on each activity. Can you guide me on how to keep session id available to all activities?

The easiest way to do this would be to pass the session id to the signout activity in the **Intent** you're using to start the activity:

```java
Intent intent = new Intent(getBaseContext(), SignoutActivity.class);
intent.putExtra("EXTRA_SESSION_ID", sessionId);
startActivity(intent);
```
Access that intent on next activity:
```java
String sessionId = getIntent().getStringExtra("EXTRA_SESSION_ID");
```


#### How does the OutOfMemory happens? 
**Out of memory** error is very common error when you are developing for a application that deals with multiple images sets or large bitmaps or some Animation stuff. In Android, every application runs in a Linux Process. Each Linux Process has a Virtual Machine (Dalvik Virtual Machine) running inside it. There is a limit on the memory a process can demand and it is different for different devices and also differs for phones and tablets. When some process demands a higher memory than its limit it causes a error i.e **Out of memory** error.

There are number of reasons why we get a Out of memory errors. Some of those are:

1. You are doing some operation that continuously demands a lot of memory and at some point it goes beyond the max heap memory limit of a process.

2. You are leaking some memory i.e you didn’t make the previous objects you allocated eligible for Garbage Collection (GC). This is called Memory leak.

3. You are dealing with large bitmaps and loading all of them at run time. You have to deal very carefully with large bitmaps by loading the size that you need not the whole bitmap at once and then do scaling.


#### What is a ContentProvider and what is it typically used for? 
A **content provider** manages access to a central repository of data. A provider is part of an Android application, which often provides its own UI for working with the data. However, content providers are primarily intended to be used by other applications, which access the provider using a provider client object.

Typically you work with content providers in one of two scenarios; 
* you may want to implement code to access an existing content provider in another application, or 
* you may want to create a new content provider in your application to share data with other applications.


#### What is an AsyncTask? 
`AsyncTask` is one of the easiest ways to implement parallelism in Android without having to deal with more complex methods like Threads. Though it offers a basic level of parallelism with the UI thread, it should not be used for longer operations (of, say, not more than 2 seconds). 

AsyncTask has four methods 

- `onPreExecute()` 
- `doInBackground()`
- `onProgressUpdate()`
- `onPostExecute()`

where `doInBackground()` is the most important as it is where background computations are performed.


#### Why is it recommended to use only the default constructor to create a Fragment? 
In short, Fragments need to have a no-args constructor for the Android system to instantiate them. Your Fragment subclasses need a public empty constructor as this is what's being called by the framework.

It is used in the case when device has to restore the state of a fragment. No data will be passed and a default fragment will be created and then the state will be restored. Since the system has no way to know what you passed in your constructor or your `newInstance`, default constructor will be used and saved bundle should be passed via onCreate after the fragment is actually instantiated with the default constructor.


#### How to persist data in an Android app? 
There are basically four different ways to store data in an Android app:

1. Shared Preferences - to save primitive data in key-value pairs
2. Internal Storage - you need to store data to the device filesystem, but you do not want any other app (even the user) to read this data
3. External Storage -  you might want the user to view the files and data saved by your app
4. SQLite database



#### Explain Android notification system 
A **notification** is a message that Android displays outside your app's UI to provide the user with reminders, communication from other people, or other timely information from your app. Users can tap the notification to open your app or take an action directly from the notification.

Notifications appear to users in different locations and formats, such as an icon in the status bar, a more detailed entry in the notification drawer, as a badge on the app's icon, and on paired wearables automatically. Beginning with Android 5.0, notifications can appear on the lock screen.

Starting in Android 8.0 (API level 26), all notifications must be assigned to a channel or it will not appear. By categorizing notifications into channels, users can disable specific notification channels for your app (instead of disabling all your notifications), and users can control the visual and auditory options for each channel—all from the Android system settings.


## [[⬆]](#toc) <a name=Angular>Angular</a> Interview Questions
#### What is Routing Guard in Angular? 
Angular’s route guards are interfaces which can tell the router whether or not it should allow navigation to a requested route. They make this decision by looking for a true or false return value from a class which implements the given guard interface.


#### What is a module, and what does it contain? 
An Angular module is set of Angular basic building blocks like component, directives, services etc. An app can have more than one module.

A module can be created using `@NgModule` decorator.

```js
@NgModule({
  imports:      [ BrowserModule ],
  declarations: [ AppComponent ],
  bootstrap:    [ AppComponent ]
})
export class AppModule { }
```


#### What are pipes? Give me an example. 
A **pipe** takes in data as input and transforms it to a desired output. You can chain pipes together in potentially useful combinations. You can write your own custom pipes. Angular comes with a stock of pipes such as `DatePipe`, `UpperCasePipe`, `LowerCasePipe`, `CurrencyPipe`, and `PercentPipe`.

Consider:
```html
<p>The hero's birthday is {{ birthday | date }}</p>
```
In this page, you'll use pipes to transform a component's birthday property into a human-friendly date.


#### What is the minimum definition of a component? 
The absolute minimal configuration for a `@Component` in Angular is a template. Both template properties are set to optional because you have to define either `template` or `templateUrl`.

When you don't define them, you will get an exception like this:
```sh
No template specified for component 'ComponentName'
```
A selector property is not required, as you can also use your components in a route.


#### What's the difference between an Angular component and module? 
*Components* control views (html). They also communicate with other components and services to bring functionality to your app.

*Modules* consist of one or more components. They do not control any html. Your modules declare which components can be used by components belonging to other modules, which classes will be injected by the dependency injector and which component gets bootstrapped. Modules allow you to manage your components to bring modularity to your app.


#### How would you run unit test? 
The Angular CLI downloads and install everything you need to test an Angular application with the Jasmine test framework.

The project you create with the CLI is immediately ready to test. Just run this one CLI command:

```sh
ng test
```


#### What is a service, and when will you use it? 
*Angular services* are singleton objects which get instantiated only once during the lifetime of an application. They contain methods that maintain data throughout the life of an application, i.e. data does not get refreshed and is available all the time. The main objective of a service is to organize and share business logic, models, or data and functions with different components of an Angular application.

The *separation of concerns* is the main reason why Angular services came into existence. An Angular service is a stateless object and provides some very useful functions. 


#### What is interpolation? 
**Interpolation** is a special syntax that Angular converts into property binding. It’s a convenient alternative to property binding. It is represented by double curly braces({{}}). The text between the braces is often the name of a component property. Angular replaces that name with the string value of the corresponding component property.
Let's take an example,
```html
    <h3>
      {{title}}
      <img src="{{url}}" style="height:30px">
    </h3>
```
In the example above, Angular evaluates the title and url properties and fills in the blanks, first displaying a bold application title and then a URL.


#### What is a bootstrapping module? 
Every application has at least one Angular module, the root module that you bootstrap to launch the application is called as bootstrapping module. It is commonly known as AppModule. The default structure of AppModule generated by AngularCLI would be as follows,
```javascript
    /* JavaScript imports */
    import { BrowserModule } from '@angular/platform-browser';
    import { NgModule } from '@angular/core';
    import { FormsModule } from '@angular/forms';
    import { HttpClientModule } from '@angular/common/http';

    import { AppComponent } from './app.component';

    /* the AppModule class with the @NgModule decorator */
    @NgModule({
      declarations: [
        AppComponent
      ],
      imports: [
        BrowserModule,
        FormsModule,
        HttpClientModule
      ],
      providers: [],
      bootstrap: [AppComponent]
    })
    export class AppModule { }
```


#### What is the equivalent of ngShow and ngHide in Angular? 
Just bind to the `hidden` property


#### What are observables? 
**Observables** are declarative which provide support for passing messages between publishers and subscribers in your application. They are mainly used for event handling, asynchronous programming, and handling multiple values. In this case, you define a function for publishing values, but it is not executed until a consumer subscribes to it. The subscribed consumer then receives notifications until the function completes, or until they unsubscribe.


#### What is an observable? 
 An Observable is a unique Object similar to a Promise that can help manage async code. Observables are not part of the JavaScript language so we need to rely on a popular Observable library called RxJS.
    The observables are created using new keyword. Let see the simple example of observable,
```javascript
    import { Observable } from 'rxjs';

    const observable = new Observable(observer => {
      setTimeout(() => {
        observer.next('Hello from a Observable!');
      }, 2000);
    });`
```


#### What is a component? Why would you use it? 
*Components* are the most basic building block of an UI in an Angular application. An Angular application is a tree of Angular components. Angular components are a subset of directives. Unlike directives, components always have a template and only one component can be instantiated per an element in a template.

A component must belong to an NgModule in order for it to be usable by another component or application. To specify that a component is a member of an NgModule, you should list it in the `declarations` field of that NgModule.

```js
@Component({selector: 'greet', template: 'Hello {{name}}!'})
class Greet {
  name: string = 'World';
}
```


#### What is an observer? 
Observer is an interface for a consumer of push-based notifications delivered by an Observable. It has below structure,
```javascript
    interface Observer<T> {
      closed?: boolean;
      next: (value: T) => void;
      error: (err: any) => void;
      complete: () => void;
    }
```
A handler that implements the Observer interface for receiving observable notifications will be passed as a parameter for observable as below,
```javascript
    myObservable.subscribe(myObserver);
```
**Note:** If you don't supply a handler for a notification type, the observer ignores notifications of that type.


#### What is the purpose of base href tag? 
The routing application should add <base> element to the index.html as the first child in the <head> tag inorder to indicate how to compose navigation URLs. If app folder is the application root then you can set the href value as below
```html
    <base href="/">
```


#### You have an HTML response I want to display. How do I do that?  
The correct syntax is the following:
```html
<div [innerHTML]="theHtmlString"></div>
```
Working in `5.2.6`


#### What is the difference between Structural and Attribute directives in Angular? 
* **Structural directives** are used to alter the DOM layout by removing and adding DOM elements. It is far better in changing the structure of the view. Examples of Structural directives are NgFor and Nglf.

* **Attribute Directives** These are being used as characteristics of elements. For example, a directive such as built-in NgStyle in the template Syntax guide is an attribute directive.


#### How can I select an element in a component template? 
You can get a handle to the DOM element via ElementRef by injecting it into your component's constructor:

```js
constructor(myElement: ElementRef) { ... }
```


#### What is the equivalent of "ngShow" and "ngHide" in Angular? 
Just bind to the hidden property:

```js
[hidden]="!myVar"
```


#### What is the difference between *ngIf vs [hidden]? 
`*ngIf` effectively removes its content from the DOM while `[hidden]` modifies the `display` property and only instructs the browser to not show the content but the DOM still contains it.


#### What are the differences between AngularJS (angular 1.x) and Angular (Angular 2.x and beyond)? 
Angular and AngularJS is basically a different framework with the same name.

Angular is more ready for the current state of web standards and the future state of the web (ES6\7, immutiablity, components, shadow DOM, service workers, mobile compatibilty, modules, typescript and so on and so on... )

Angular killed many main features in AngularJS like - controllers, $scope, directives (replaced with `@component` annotations), the module definition, and much more, even simple things like ng-repeat has not left the same as it was.

Also: 
1. They added an angular `cli`.
2. Your angular code is written in ES6 Typescript and it compiles at runtime to Javascript in the browser.
3. You bind to your HTML similarly like how you would if in an Angular 1 directive. So variable like $scope and $rootScope have been deprecated.


#### What are some differences between Angular 2 and 4? 
Just to name a few:
* Improvements in AOT, 
* allowing the "else" clause in ngIf, 
* support for TypeScript 2.1
* breaking out the animations package


#### What is the difference between "@Component" and "@Directive" in Angular?  
* **Directives** add behaviour to an existing DOM element or an existing component instance.
* **A component**, rather than adding/modifying behaviour, actually creates its own view (hierarchy of DOM elements) with attached behaviour.

Write a component when you want to create a reusable set of DOM elements of UI with custom behaviour. Write a directive when you want to write reusable behaviour to supplement existing DOM elements.


#### How would you protect a component being activated through the router? 
The Angular router ships with a feature called guards. These provide us with ways to control the flow of our application. We can stop a user from visitng certain routes, stop a user from leaving routes, and more. The overall process for protecting Angular routes:

* Create a guard service: `ng g guard auth`
* Create `canActivate()` or `canActivateChild()` methods
* Use the guard when defining routes

```js
// import the newly created AuthGuard
const routes: Routes = [
  {
    path: 'account',
    canActivate: [AuthGuard]
  }
];
```

Some other available guards:

* `CanActivate`: Check if a user has access
* `CanActivateChild`: Check if a user has access to any of the child routes
* `CanDeactivate`: Can a user leave a page? For example, they haven't finished editing a post
* `Resolve`: Grab data before the route is instantiated
* `CanLoad`: Check to see if we can load the routes assets


#### What does this line do? 
**Details:**
```js
@HostBinding('[class.valid]') isValid;
```

`@HostBinding` lets you set properties on the element or component that hosts the directive.

The code applies the css class `valid` to whatever is using this directive conditionally based on the value of isValid.


## [[⬆]](#toc) <a name=AngularJS>AngularJS</a> Interview Questions
#### Why to use AngularJS? 
There are following reasons to choose AngularJS as a web development framework:

1. It is based on MVC pattern which helps you to organize your web apps or web application properly.
2. It extends HTML by attaching directives to your HTML markup with new attributes or tags and expressions
in order to define very powerful templates.
3. It also allows you to create your own directives, making reusable components that fill your needs and
abstract your DOM manipulation logic.
4. It supports two-way data binding i.e. connects your HTML (views) to your JavaScript objects (models)
seamlessly. In this way any change in model will update the view and vice versa without any DOM
manipulation or event handling.
5. It encapsulates the behavior of your application in controllers which are instantiated with the help of
dependency injection.
6. It supports services that can be injected into your controllers to use some utility code to fullfil your need.
For example, it provides $http service to communicate with REST service.
7. It supports dependency injection which helps you to test your angular app code very easily.
8. Also, AngularJS is mature community to help you. It has widely support over the internet.


#### What is the difference between "ng-show"/"ng-hide" and "ng-if" directives? 
`ng-show`/`ng-hide` will always insert the DOM element, but will display/hide it based on the condition. `ng-if` will not insert the DOM element until the condition is not fulfilled.

`ng-if` is better when we needed the DOM to be loaded conditionally, as it will help load page bit faster compared to `ng-show`/`ng-hide`.

We only need to keep in mind what the difference between these directives is, so deciding which one to use totally depends on the task requirements.



#### Does AngularJS has dependency on jQuery? 
AngularJS has no dependency on jQuery library. But it can be used with jQuery library.


#### How do you hide an HTML element via a button click in AngularJS? 
This can be done by using the `ng-hide` directive in conjunction with a controller to hide an HTML element on button click.

```html
<div ng-controller="MyCtrl">
    <button ng-click="hide()">Hide element</button>
    <p ng-hide="isHide">Hello World!</p>
</div>
```

```js
function MyCtrl($scope) {
	$scope.isHide = false;
	$scope.hide = function () {
		$scope.isHide = true;
	};
}
```
    


#### What is a singleton pattern and where we can find it in AngularJS? 
Is a great pattern that restricts the use of a class more than once. We can find singleton pattern in angular in dependency injection and in the services.

In a sense, if the you do 2 times `new Object()` without this pattern, the you will be alocating 2 pieces of memory for the same object. With singleton pattern, if the object exists, it'll be reused.


#### What are the AngularJS features? 
The features of AngularJS are listed below:

1. Modules
2. Directives
3. Templates
4. Scope
5. Expressions
6. Data Binding
7. MVC (Model, View & Controller)
8. Validations
9. Filters
10. Services
11. Routing
12. Dependency Injection
13. Testing


#### When dependent modules of a module are loaded? 
A module might have dependencies on other modules. The dependent modules are loaded by angular
before the requiring module is loaded.

In other words the configuration blocks of the dependent modules execute before the configuration blocks of the requiring module. The same is true for the run blocks. Each module can only be loaded once, even if multiple other modules require it.


#### What is Angular’s prefixes $ and $$? 
To prevent accidental name collisions with your code, Angular prefixes names of public objects with $ and names of private objects with `$$`. So, do not use the `$` or `$$` prefix in your code.


#### What are Filters in AngularJS? 
*Filters* are used to format data before displaying it to the user. They can be used in view templates, controllers, services and directives. There are some built-in filters provided by AngularJS like as `Currency`, `Date`, `Number`, `OrderBy`, `Lowercase`, `Uppercase` etc. You can also create your own filters.

Filter Syntax:

```{{ expression | filter}}```


#### What are Directives in AngularJS? 
AngularJS directives are a combination of AngularJS template markups (HTML attributes or elements, or CSS classes) and supporting JavaScript code. The JavaScript directive code defines the template data and behaviors of the HTML elements.

AngularJS directives are used to extend the HTML vocabulary i.e. they decorate html elements with new behaviors and help to manipulate html elements attributes in interesting way.

There are some built-in directives provided by AngularJS like as ng-app, ng-controller, ng-repeat, ng-model etc.



#### What are Directives? 
**Directives** are markers on a DOM element (such as an attribute, element name, comment or CSS class) that tell AngularJS’s HTML compiler ($compile) to attach a specified behavior to that DOM element (e.g. via event listeners), or even to transform the DOM element and its children. 

Angular comes with a set of these directives built-in, like `ngBind`, `ngModel`, and `ngClass`. Much like you create controllers and services, you can create your own directives for Angular to use. When Angular bootstraps your application, the HTML compiler traverses the DOM matching directives against the DOM elements.


#### Explain what is a "$scope" in AngularJS 
**Scope** is an object that refers to the application model. It is an execution context for expressions. Scopes are arranged in hierarchical structure which mimic the DOM structure of the application. Scopes can watch expressions and propagate events. Scopes are objects that refer to the model. They act as glue between controller and view.


#### What directive would you use to hide elements from the HTML DOM by removing them from that DOM not changing their styling? 
The `ngIf` Directive, when applied to an element, will remove that element from the DOM if it’s condition is false.


#### What is the difference between one-way binding and two-way binding? 
* One way binding implies that the scope variable in the html will be set to the first value its model is bound to (i.e. assigned to)  
* Two way binding implies that the scope variable will change it’s value everytime its model is assigned to a different value


#### What is auto bootstrap process in AngularJS? 
Angular initializes automatically upon ```DOMContentLoaded``` event or when the angular.js script is downloaded to the browser and the ```document.readyState``` is set to ```complete```. At this point AngularJS looks for the ```ng-app``` directive which is the root of angular app compilation and tells about AngularJS part within DOM. When the ```ng-app``` directive is found then Angular will:

1. Load the module associated with the directive.
2. Create the application injector.
3. Compile the DOM starting from the ng-app root element.
This process is called auto-bootstrapping.

```html
<html>
<body ng-app="myApp">
<div ng-controller="Ctrl"> Hello {{msg}}!
</div>
    <script src="lib/angular.js"></script>
    <script>
var app = angular.module('myApp', []); app.controller('Ctrl', function ($scope) {
              $scope.msg = 'World';
          });
    </script>
</body>
</html>
```


#### How would you specify that a scope variable should have one-time binding only? 
By using “`::`” in front of it. 


#### What is scope in AngularJS? 
Scope is a JavaScript object that refers to the application model. It acts as a context for evaluating angular expressions. Basically, it acts as glue between controller and view.

Scopes are hierarchical in nature and follow the DOM structure of your AngularJS app. AngularJS has two scope objects: **$rootScope** and **$scope**.


#### How do you disable a button depending on a checkbox’s state? 
We can use the `ng-disabled` directive and bind its condition to the checkbox’s state.

```html
<body ng-app>
    <label>
        <input type="checkbox" ng-model="checked" />Disable Button
    </label>
    <button ng-disabled="checked">Select me</button>
</body>
```
    


#### What is scope hierarchy? 
The **$scope** object used by views in AngularJS are organized into a hierarchy. There is a root scope, and the **$rootScope** can has one or more child scopes. Each controller has its own **$scope** (which is a child of the **$rootScope**), so whatever variables you create on $scope within controller, these variables are accessible by the view based on this controller.

For example, suppose you have two controllers: ParentController and ChildController as given below:
```html
<html>
  <head>
    <script src="lib/angular.js"></script>
    <script>
      var app = angular.module('ScopeChain', []); app.controller("parentController", function ($scope) {
      	$scope.managerName = 'Shailendra Chauhan';
      	$scope.$parent.companyName = 'Dot Net Tricks'; //attached to $rootScope
      });
      app.controller("childController", function ($scope, $controller) {
                 $scope.teamLeadName = 'Deepak Chauhan';
             });
         
    </script>
  </head>
  <body ng-app="ScopeChain">
    <div ng-controller="parentController ">
      <table style="border:2px solid #e37112">
        <caption>Parent Controller</caption>
        <tr>
          <td>Manager Name</td>
          <td>{{managerName}}</td>
        </tr>
        <tr>
          <td>Company Name</td>
          <td>{{companyName}}</td>
        </tr>
        <tr>
          <td>
            <table ng-controller="childController" style="border:2px solid #428bca">
              <caption>Child Controller</caption>
              <tr>
                <td>Team Lead Name</td>
                <td>{{ teamLeadName }}</td>
              </tr>
              <tr>
                <td>Reporting To</td>
                <td>{{managerName}}</td>
              </tr>
              <tr>
                <td>Company Name</td>
                <td>{{companyName}}</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>
```



#### How do you share data between controllers? 
Create an AngularJS service that will hold the data and inject it inside of the controllers.

Using a service is the cleanest, fastest and easiest way to test. However, there are couple of other ways to implement data sharing between controllers, like:

– Using `events`  
– Using `$parent`, `nextSibling`, `controllerAs`, etc. to directly access the controllers  
– Using the `$rootScope` to add the data on (not a good practice)

The methods above are all correct, but are not the most efficient and easy to test.


#### What are the basic steps to unit test an AngularJS filter? 
* Inject the module that contains the filter.
* Provide any mocks that the filter relies on.
* Get an instance of the filter using `$filter('yourFilterName')`.
* Assert your expectations.


#### What are the basic steps to unit test an AngularJS filter? 
1.  Inject the module that contains the filter.
2.  Provide any mocks that the filter relies on.
3.  Get an instance of the filter using `$filter('yourFilterName')`.
4.  Assert your expectations.


####  What are the advantage of AngularJS? 
There are following advantages of AngularJS:

1. **Data Binding** - AngularJS provides a powerful data binding mechanism to bind data to HTML elements by using scope.
2. **Customize & Extensible** - AngularJS is customized and extensible as per you requirement. You can create your own custom components like directives, services etc.
3. **Code Reusability** - AngularJS allows you to write code which can be reused. For example custom directive which you can reuse.
4. **Support** – AngularJS is mature community to help you. It has widely support over the internet. Also, AngularJS is supported by Google which gives it an advantage.
5. **Compatibility** - AngularJS is based on JavaScript which makes it easier to integrate with any other JavaScript library and runnable on browsers like IE, Opera, FF, Safari, Chrome etc.
6. **Testing** - AngularJS is designed to be testable so that you can test your AngularJS app components as easy as possible. It has dependency injection at its core, which makes it easy to test.


#### Explain what is services in AngularJS 
In AngularJS *services* are the singleton objects or functions that are used for carrying out specific tasks.  It holds some business logic and these function can be called as controllers, directive, filters and so on.


#### Explain what is directive and mention what are the different types of Directive? 
During compilation process when specific HTML constructs are encountered a behaviour or function is triggered, this function is referred as *directive*.  It is executed when the compiler encounters it in the DOM.

Different types of directives are:

* Element directives
* Attribute directives
* CSS class directives
* Comment directives


## [[⬆]](#toc) <a name=Azure>Azure</a> Interview Questions
#### What are the benefits of severless applications? 
* Avoid managing servers
* Flexible scaling by demand
* Pay for time and resources it takes to execute your code

#### What is Azure Cloud Service? 
By creating a cloud service, you can deploy a multi-tier web application in Azure, defining multiple roles to distribute processing and allow flexible scaling of your application. A cloud service consists of one or more web roles and/or worker roles, each with its own application files and configuration. Azure Websites and Virtual Machines also enable web applications on Azure. The main advantage of cloud services is the ability to support more complex multi-tier architectures


#### What is a web role? 
A web role provides a dedicated Internet Information Services (IIS) web-server used for hosting front-end web applications.


#### What is Azure Functions? 
Azure Functions is a solution for easily running small pieces of code, or "functions," in the cloud. We can write just the code we need for the problem at hand, without worrying about a whole application or the infrastructure to run it and use language of our choice such as C#, F#, Node.js, Java, or PHP. Azure Functions lets us develop serverless applications on Microsoft Azure.

#### What is serverless computing? 
Serverless computing is the abstraction of servers, infrastructure, and operating systems. When you build serverless apps you don’t need to provision and manage any servers, so you can take your mind off infrastructure concerns. Serverless computing is driven by the reaction to events and triggers happening in near-real-time—in the cloud. 

As a fully managed service, server management and capacity planning are invisible to the developer and billing is based just on resources consumed or the actual time your code is running.

#### Is Azure Table Storage Nosql? 
**Azure Table storage** is a service that stores structured NoSQL data in the cloud, providing a key/attribute store with a schemaless design.


#### What is Kudu? 
Every Azure App Service web application includes a "hidden" service site called **Kudu**.

Kudu Console for example is a debugging service for Azure platform which allows you to explore your web app and surf the bugs present on it, like deployment logs, memory dump, and uploading files to your web app, and adding JSON endpoints to your web apps, etc.


#### What is a role instance? 
A role instance is a virtual machine on which the application code and role configuration run. A role can have multiple instances, defined in the service configuration file.


#### What is a guest operating system? 
The guest operating system for a cloud service is the operating system installed on the role instances (virtual machines) on which your application code runs.


#### What is Azure Blob Storage? 
*Azure Blob storage* is Microsoft's object storage solution for the cloud. Blob storage is optimized for storing massive amounts of unstructured data, such as text or binary data. Azure Storage offers three types of blobs:
* **Block blobs** store text and binary data, up to about 4.7 TB. Block blobs are made up of blocks of data that can be managed individually.
* **Append blobs** are made up of blocks like block blobs, but are optimized for append operations. Append blobs are ideal for scenarios such as logging data from virtual machines.
* **Page blobs** store random access files up to 8 TB in size. Page blobs store the VHD files that back VMs.



#### How to include external dll into Azure Function? 
* Add the assembly to the BIN directory using KUDU
* Include the assembly and code the Azure Function to use it
* Add the using declaration so that the methods within the DLL can be accessed. 

```cs
#r "D:\home\site\wwwroot\GreetingsAssemblyReference\bin\benjamin.dll"

using benjamin;
```

#### What is an Azure subscription? 
A Windows **Azure subscription** grants you access to Windows Azure services and to the Windows Azure Platform Management Portal. A Windows Azure subscription has two aspects: 
* The Windows Azure account, through which resource usage is reported
* Services are billed.


#### What is Azure ARM? 
The **Azure Resource Manager (ARM)** is the service used to provision resources in your Azure subscription. It was first announced at Build 2014 when the new Azure portal ( portal.azure.com) was announced and provides a new set of API's that are used to provision resources. The ARM is:

* Template-driven – Using templates to deploy all resources.
* Declarative – You declare the resources you want to have instead of imperative where you need to make rules.
* Idempotent – You can deploy the template over and over again without affecting the current state of resources.
* Multi-service – All services can be deployed using Azure Resource Manager, Website, Storage, VMs etc.
* Multi region - You can choose in which region you would like to deploy the resources.
* Extensible – Azure Resource Manager is extensible with more resource providers and thus resources.



#### Explain the Azure ARM Templates 
An Azure Resource Template is a JSON file used to deploy resources with Azure Resource Manager. It defines:
* Parameters
* Variables
* Resources - the actual resources that you are going to deploy or update
* Outputs


#### What is a cloud service role? 
A cloud service role is comprised of application files and a configuration. A cloud service can have two types of roles:
* web role
* worker role


#### What is Azure Redis Cache? 
*Redis* is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker. **Azure Redis Cache** is based on the popular open-source Redis cache. It gives you access to a secure, dedicated Redis cache, managed by Microsoft, and accessible from any application within Azure. It supports data structures such as strings, hashes, lists, sets, sorted sets with range queries, bitmaps, hyperloglogs and geospatial indexes with radius queries.


#### What is Azure Service Fabric? 
**Azure Service Fabric** is a distributed systems platform that makes it easy to package, deploy, and manage scalable and reliable micro-services. Service Fabric also addresses the significant challenges in developing and managing cloud applications. Developers and administrators can avoid complex infrastructure problems and focus on implementing mission-critical, demanding workloads that are scalable, reliable, and manageable. Service Fabric represents the next-generation middleware platform for building and managing these enterprise-class, tier-1, cloud-scale applications.


#### How can I use applications with Azure AD that I’m using on-premises? 
*Azure AD* gives you an easy and secure way to connect to the web applications you choose. You can access these applications in the same way you access your SaaS apps in Azure AD, no need for a VPN to change your network infrastructure.


#### What is Azure Resource Group? 
Resource groups (RG) in Azure is an approach to group a collection of assets in logical groups for easy or even automatic provisioning, monitoring, and access control, and for more effective management of their costs. The underlying technology that powers resource groups is the Azure Resource Manager (ARM).


#### What Is Azure Key Vault? 
**Key Vault** help you safeguard cryptographic keys and other secrets used by your applications whenever they are On-Premise or in the cloud. More and more services on Azure are now integrating Azure Key Vault as their secret/key source for things like deployments, data or even disk encryption.


#### What is a Blob Container? 
A container organizes a set of blobs, similar to a folder in a file system. All blobs reside within a container. A storage account can contain an unlimited number of containers, and a container can store an unlimited number of blobs.


## [[⬆]](#toc) <a name=Behavioral>Behavioral</a> Interview Questions
#### Why do you want to work for X company? 
The interviewer is looking for similar things whether asking about company or position. The hiring manager wants to:

* Learn about your career goals and how this position fits into your plan
* Make sure that you are sincerely interested in the job and will be motivated to perform if hired
* Find out what you know about the company, industry, position (and if you took the time to research)
* Understand your priorities and preferences — which aspects of the company and/or job are appealing to you and why?


#### Why do you want to leave your current/last company? 
Here are some things your interviewer is likely looking for:

* Did you leave for a good reason?
* Did you leave voluntarily?
* Did you leave on good terms?
* What are your work values?

## [[⬆]](#toc) <a name=BigData>Big Data</a> Interview Questions
#### What is the meaning of big data and how is it different? 
Big data is the term to represent all kind of data generated on the internet. On the internet over hundreds of GB of data is generated only by online activity. Here, online activity implies web activity, blogs, text, video/audio files, images, email, social network activity, and so on. Big data can be referred to data created from all these activities. Data generated online is mostly in unstructured form. Big data will also include transactions data in the database, system log files, along with data generated from smart devices such as sensors, IoT, RFID tags, and so on in addition to online activities.

Big data needs specialized systems and software tools to process all unstructured data. In fact, according to some industry estimates almost 85% of data generated on the internet is unstructured. Usually, relational databases have a structured format and the database is centralized. Hence, with RDBMS processing can be quickly done using a query language such as SQL. On the other hand, big data is very large and is distributed across the internet and hence processing big data will need distributed systems and tools to extract information from them. Big data needs specialized tools such as Hadoop, Hive, or others along with high-performance hardware and networks to process them.



#### What are the characteristics of big data? 
Big data has three main characteristics: Volume, Variety, and Velocity.
Volume characteristic refers to the size of data. Estimates show that over 3 million GB of data is generated every day. Processing this volume of data is not possible in a normal personal computer or in a client-server network in an office environment with limited compute bandwidth and storage capacities. However, cloud services provide solutions to handle big data volumes and process them efficiently using distributed computing architectures.

Variety characteristic refers to the format of big data – structured or unstructured. Traditional RDBMS fits into the structured format. An example of unstructured data format is, a video file format, image files, plain text format, from web document or standard MS Word documents, all have unique formats, and so on. Also to note, RDBMS does not have the capacity to handle unstructured data formats. Further, all this unstructured data must be grouped and consolidated which creates the need for specialized tools and systems. In addition new, data is added each day, or each minute and data grows continuously. Hence big data is more synonymous with variety.

The velocity characteristic refers to the speed at which data is created and the efficiency required to process all the data. For example, Facebook is accessed by over 1.6 billion users in a month. Likewise, there are other social network sites, YouTube, Google services, etc. Such data streams must be processed using queries in real time and must be stored without data loss. Thus, velocity characteristic is important in big data processing.
In addition, other characteristics include veracity and value. Veracity will determine the dependability and reliability of data and value is the value derived by organizations from big data processing.


#### Why is big data important for organizations? 
This is the basic Big Data interview question asked in an interview. Big data is important because by processing big data, organizations can obtain insight information related to:

 * Cost reduction
 * Improvements in products or services
 * To understand customer behaviour and markets
 * Effective decision making
 * To become more competitive


#### Name some tools or systems used in big data processing? 
Big data processing and analysis can be done using:
 * Hadoop
 * Hive
 * Pig
 * Mahout
 * Flume


#### How can big data support organizations? 
Big data has the potential to support organizations in many ways. Information extracted from big data can be used in:
 * Better coordination with customers and stakeholders and to resolve problems
 * Improve reporting and analysis for product or service improvements
 * Customize products and services to selected markets
 * Ensure better information sharing
 * Support in management decisions
 * Identify new opportunities, product ideas, and new markets
 * Gather data from multiple sources and archive them for future reference
 * Maintain databases, systems
 * Determine performance metrics
 * Understand interdependencies between business functions
 * Evaluate organizational performance


#### Explain how big data can be used to increase business value? 
While understanding the need for analyzing big data, such analysis will help businesses to identify their position in markets, and help businesses to differentiate themselves from their competitors. For example, from the results of big data analysis, organizations can understand the need for customized products or can understand potential markets towards increasing revenue and value. Analyzing big data will involve grouping data from various sources to understand trends and information related to business. When big data analysis is done in a planned manner by gathering data from the right sources, organizations can easily generate business value and revenue by almost 5% to 20%. Some examples of such organizations are Amazon, Linkedin, WalMart, and many others.


#### What is big data solution implementation? 
Big data solutions are implemented at a small scale first, based on a concept as appropriate for the business. From the result, which is a prototype solution, the business solution is scaled further. This is the most popular Big Data interview questions asked in a Big Data interview Some of the best practices followed in the industry include:
 * To have clear project objectives and to collaborate wherever necessary
 * Gathering data from the right sources
 * Ensure the results are not skewed because this can lead to wrong conclusions
 * Be prepared to innovate by considering hybrid approaches in processing by including data from structured and unstructured types, include both internal and external data sources
 * Understand the impact of big data on existing information flows in the organization


#### What are the steps involved in big data solutions? 
Big data solutions follow three standard steps in its implementation. They are:

**Data ingestion**: This step will define the approach to extract and consolidate data from multiple sources. For example, data sources can be social network feeds, CRM, RDBMS, etc. The data extracted from different sources is stored in a Hadoop distributed file system (HDFS).

**Data storage**: This is the second step, the extracted data is stored. This storage can be in HDFS or HBase (NoSQL database).

**Process the data**: This is the last step. The data stored must be processed. Processing is done using tools such as Spark, Pig, MapReduce, and others.


## [[⬆]](#toc) <a name=Blockchain>Blockchain</a> Interview Questions
#### What is blockchain? 
**Blockchain** is a secure distributed ledger (data structure or database) that maintains a continuously growing list of ordered records, called “blocks”,  that are linked using cryptography. Each block contains a cryptographic hash of the previous block, a timestamp, and transaction data.

By design, a blockchain is resistant to modification of the data. It is "an open, distributed ledger that can record transactions between two parties efficiently and in a verifiable and permanent way".

Once recorded, the data in any given block cannot be altered retroactively without alteration of all subsequent blocks, which requires consensus of the network majority. 


#### Explain the common structure of blockchains 
Blockchains are composed of three core parts:
* **Block**: A list of transactions recorded into a ledger over a given period. The size, period, and triggering event for blocks is different for every blockchain.
* **Chain**: A hash that links one block to another, mathematically “chaining” them together. 
* **Network**: The network is composed of “full nodes.” Think of them as the computer running an algorithm that is securing the network. Each node contains a complete record of all the transactions that were ever recorded in that blockchain.


#### What is the blockchain data structure? 
Basically **the blockchain data structure** is explained as a back-linked record of blocks of transactions, which is ordered. It can be saved as a file or in a plain database. Each block can be recognized by a hash, created utilizing the SHA256 cryptographic hash algorithm on the header of the block. Each block mentions a former block, also identified as the parent block, in the “previous block hash” field, in the block header.

<div class="text-center"/>
<img src="https://vitalflux.com/wp-content/uploads/2018/06/Blockchain-represented-as-Linked-List-Data-Structure.png" class="img-fluid" style="max-width: 500px" />
</div>



#### What is the Genesis Block? 
The **first block in any blockchain **is termed the **genesis block**. If you start at any block and follow the chain backwards chronologically, you will arrive at the genesis block. The genesis block is statically encoded within the client software, that it cannot be changed. Every node can identify the genesis block’s hash and structure, the fixed time of creation, and the single transactions within. Thus every node has a secure “root” from which is possible to build a trusted blockchain on.


#### What is blockchain transaction? 
**Transactions** are the things that give a blockchain purpose. They are the smallest building blocks of a blockchain system. Transactions generally consist of:
* a recipient address, 
* a sender address, 
* and a value. 

This is not too different from a standard transaction that you would find on a credit card statement.

A transaction _changes the state_ of the agreed-correct blockchain. A blockchain is a shared, decentralized, distributed state machine. This means that all nodes (users of the blockchain system) independently hold their own copy of the blockchain, and the current known "state" is calculated by processing each transaction in order as it appears in the blockchain.


#### What is the purpose of a blockchain node? 
A blockchain exists out of blocks of data. These blocks of data are stored on nodes (compare it to small servers). **Nodes** can be any kind of device (mostly computers, laptops or even bigger servers). Nodes form the infrastructure of a blockchain. 

All nodes on a blockchain are connected to each other and they constantly exchange the latest blockchain data with each other so all nodes stay up to date. They store, spread and preserve the blockchain data, so theoretically a blockchain exists on nodes. 

A **full node** is basically a device (like a computer) that contains a full copy of the transaction history of the blockchain.


#### Why does Blockchain need coins or tokens? 
_Tokens/Coins are used as a medium of exchange between the states_. They are digital assets built in to perform a specific function within a blockchain.

When someone does a transaction, there is a _change of state_, and coins are moved from one address to another address. Apart from that, transactions contain some additional data; this data can be mutated through the change of state. For this reason, blockchains need coins or tokens to incentivize the participants to join their networks.


#### What is proof-of-work? 
A **proof of work** is a piece of data which is difficult (costly, time-consuming) to produce but easy for others to verify and which satisfies certain requirements. Producing a proof of work can be a random process with low probability so that a lot of trial and error is required on average before a valid proof of work is generated. Difficulty is a measure of how difficult it is to find a hash below a given target.


#### What is deterministic behavior? 
If A + B = C, then no matter what the circumstances, A+B will always be equal to C. That is called deterministic behavior.

Hash functions are deterministic, meaning A’s hash will always be H(A).


## [[⬆]](#toc) <a name=Bootstrap>Bootstrap</a> Interview Questions
#### Explain Bootstrap? 
Bootstrap is a platform for web development that is based on front-end framework
and creates exceptional responsive designs. It is fast, easy and has multiple
templates designed using HTML, and CSS. These templates are used for forms,
tables, buttons, typography, modals, tables, navigation, carousels and images.
Bootstrap also has Javascript plugins, which are optional. Bootstrap is
preferred for developing mobile web applications.


#### Explain what is Bootstrap? 
Bootstrap is CSS/Javascript framework for building the rich web applications with
minimal effort. This framework emphasis more on building mobile web
applications.


#### Explain the two codes that are used for code display in Bootstrap? 
There are two simple ways to display a code in Bootstrap:

* `<code>` tag: In case you wish to display an inline code
* `<pre>` tag: In case you have a code with several lines or even a block element


#### What are the types of layout available in Bootstrap? 
In Bootstrap there are two types of Layout available

* Fluid Layout: Fluid layout is used when you want to create a app that is 100%
wide and use up all the width of the screen
* Fixed Layout: For a standard screen you will use fixed layout (940 px) option


#### What will be the output of the following HTML code 
**Consider:**
```js
<ul class="list-unstyled">
  <li>Item 1</li>
  <li>Item 2</li>
    <ul>
      <li>Nested item 2.1</li>
      <li>Nested item 2.2</li>
      <li>Nested item 2.3</li>
    </ul>     
  <li>Item 3</li>
</ul>
```
What will be the output of the following HTML code?


If we apply `.list-unstyled` to a list, it will remove the default list-style and left margin on the list items. But *only* for the immediate children. Main list items will be without any style, and nested list items will still have default unordered nested list-style.


#### Explain why you prefer Bootstrap for website development? 
Bootstrap has features that are way better than other web development platforms.
It provides an extensive browser support for almost every known browser such as
Opera, Chrome, Firefox, Safari etc. With adequate knowledge of CSS and HTML, web
development becomes easy on Bootstrap. Also, it supports mobile applications
with the help of responsive design. It can adjust CSS as per the device, screen
size etc. Instead of creating multiple files, it creates only a single file,
which reduces any extra effort by the developer.


#### What are the key components of Bootstrap? 
In total, there are five key components of Bootstrap i.e. **CSS** (multiple CSS
files), **Scaffolding (**essential for the basic system that consist of Grid
system, background and link styles), **Layout Components:** (shares a list of
all layouts), **JavaScript Plugins** (includes jQuery and JavaScript plugins)
and **Customization **(Allows customization of all components for a desired
framework)


#### How many types of layout are available in Bootstrap? 
There are two major layouts for Bootstrap i.e. Fluid Layout and Fixed Layout.
Fluid layout is necessary for creating an app that is 100 % wider and covers all
the screen width. Fixed Layout is used only for a standard screen (940px). Both
layouts can be used for creating a responsive design.


#### Why do we use Jumbotron in Bootstrap? 
*Jumbotron* has a very basic function in bootstrap i.e. highlighting a content. It
could either be a slogan/uvp (unique value proposition) or probably a headline. It increases the heading size
and gives a margin for content of the landing page. In order to implement
Jumbotron in a Bootstrap use:

```html
 <div class=”jumbotron”>
```

Jumbotron can have any valid HTML along with other functions and classes.


#### What is Twitter Bootstrap? 
Bootstrap is a sleek, intuitive, and powerful mobile first front-end framework
for faster and easier web development. It uses HTML, CSS and Javascript.


#### Explain why to choose Bootstrap for building the websites? 
There are few reason why we choose Bootstrap for building websites

* Mobile Support: For mobile devices it provides full support in one single file
rather than in separate file. It supports the responsive design including
adjusting the CSS based on the different types of device, size of the screen
etc. It reduces extra effort for developers.
* Easy to learn: Writing application in bootstrap is easy if you know CSS and HTML
* Browser Support: It supports all the popular browsers like Firefox, Opera,
Safari, IE etc.


#### What global styles are applied as a part of Bootstrap’s default typography? 
Bootstrap sets the global default font-size to `14px`, with a line-height of `1.428`. The default font is changed to `Helvetica` and `Arial` with `sans serif` fallback. 

All these styles are applied to the `<body>` and all paragraphs, with the addition that `<p>` (paragraphs) receive a bottom margin of half their computed line-height, which is `10px` by default.


#### What is the procedure to create Nav elements in Bootstrap? 
There are several styling navigation elements available on bootstrap and every
style uses the same function i.e. class `.nav`. In order to create tabs or a
tabular navigation, you can begin with a simple or rather basic unordered list
using the function class `.nav`. To add the tabs the function class `.nav-tabs` can
be used.


####  What are Glyphicons? 
Glyphicons are icon fonts which you can use in your web projects. Glyphicons
Halflings are not free and require licensing, however their creator has made
them available for Bootstrap projects free of cost.

To use the icons, simply use the following code just about anywhere in your
code. Leave a space between the icon and text for proper padding.

```html
<span class="glyphicon glyphicon-search"></span>
```


#### When to use "lead" in Bootstrap? 
To add some emphasis to a paragraph, add class `.lead`. This will give you
larger font size, lighter weight, and a taller line height.


#### Explain the typography and links in Bootstrap. 
Bootstrap sets a basic global display (background), typography, and link styles:

* **Basic Global display** − sets *background-color: #fff;* on the *<body>*
* **Typography** − uses the *@font-family-base*, *@font-size-base*,
and *@line-height-base* attributes as the typographic base
* **Link styles** − sets the global link color via attribute *@link-color* and
apply link underlines only on *:hover*.


#### How do you make images responsive? 
Bootstrap 3 allows to make the images responsive by adding a class
`.img-responsive` to the `<img>` tag. This class applies `max-width: 100%;` and
`height: auto;` to the image so that it scales nicely to the parent element.


#### What is missing for a tooltip to show properly? 
Consider:
```html
<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Example tooltip">Hover over me</button>
```
What is missing for a tooltip to show properly?

**Answer**

Bootstrap’s Tooltip plugin is not CSS-only, like other plugins are. For performance reasons, the Tooltip plugin is opt-in, and to use it you must initialize it using JavaScript with the following example code:
```js
$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
```


## [[⬆]](#toc) <a name=C#>C#</a> Interview Questions
#### What is C#? 
C# is the programming language for writing Microsoft .NET applications. C# provides the rapid application development found in Visual Basic with the power of C++. Its syntax is similar to C++ syntax and meets 100% of the requirements of OOPs like the following: 
* Abstraction
* Encapsulation
* Polymorphism
* Inheritance


#### What is the difference between "continue" and "break" statements in C#? 
* using **break** statement, you can jump out of a loop
* using **continue** statement, you can jump over one iteration and then resume your loop execution


#### What are property Accessors? 
The _get_ and _set_ portions or blocks of a property are called accessors. These are useful to restrict the accessibility of a property, the set accessor specifies that we can assign a value to a private field in a property and without the set accessor property it is like a read-only field. By the get accessor we can access the value of the private field, in other words it returns a single value. A Get accessor specifies that we can access the value of a field publically.


#### What is an Object? 
According to MSDN, "_a class or struct definition is like a blueprint that specifies what the type can do. An object is basically a block of memory that has been allocated and configured according to the blueprint. A program may create many objects of the same class. Objects are also called instances, and they can be stored in either a named variable or in an array or collection. Client code is the code that uses these variables to call the methods and access the public properties of the object. In an object-oriented language such as C#, a typical program consists of multiple objects interacting dynamically"._

Objects helps us to access the member of a class or struct either they can be fields, methods or properties, by using the dot. 


#### What is enum in C#? 
An **enum** is a value type with a set of related named constants often referred to as an enumerator list. The enum keyword is used to declare an enumeration. It is a primitive data type, which is user defined. An enum is used to create numeric constants in .NET framework. All the members of enum are of enum type. Their must be a numeric value for each enum type.

**Some points about enum**

* Enums are enumerated data type in C#.  
* Enums are strongly typed constant. They are strongly typed, i.e. an enum of one type may not be implicitly assigned to an enum of another type even though the underlying value of their members are the same.  
* Enumerations (enums) make your code much more readable and understandable.  
* Enum values are fixed. Enum can be displayed as a string and processed as an integer.  
* The default type is int, and the approved types are byte, sbyte, short, ushort, uint, long, and ulong.  
* Every enum type automatically derives from System.Enum and thus we can use System.Enum methods on enums.  
* Enums are value types and are created on the stack and not on the heap.


#### How is Exception Handling implemented in C#? 
Exception handling is done using four keywords in C#:

*   **try** – Contains a block of code for which an exception will be checked.
*   **catch** – It is a program that catches an exception with the help of exception handler.
*   **finally** – It is a block of code written to execute regardless whether an exception is caught or not.
*   **Throw** – Throws an exception when a problem occurs.


#### Can "this" be used within a static method? 
We can't use _this_ in static method because keyword _this_ returns a reference to the current instance of the class containing it. Static methods (or any static member) do not belong to a particular instance. They exist without creating an instance of the class and call with the name of a class not by instance so we can't use this keyword in the body of static Methods, but in case of Extension Methods we can use it as the functions parameters.


#### Define Property in C#? 
**Properties** are members that provide a flexible mechanism to read, write or compute the values of private fields, in other words by the property we can access private fields. In other words we can say that a property is a return type function/method with one parameter or without a parameter. These are always public data members. It uses methods to access and assign values to private fields called accessors.


#### What is Boxing and Unboxing? 
Boxing and Unboxing both are used for type conversion but have some difference:

* **Boxing** - Boxing is the process of converting a value type data type to the object or to any interface data type which is implemented by this value type. When the CLR boxes a value means when CLR is converting a value type to Object Type, it wraps the value inside a System.Object and stores it on the heap area in application domain.

* **Unboxing** - Unboxing is also a process which is used to extract the value type from the object or any implemented interface type. Boxing may be done implicitly, but unboxing have to be explicit by code. 

The concept of boxing and unboxing underlines the C# unified view of the type system in which a value of any type can be treated as an object.


#### What is the difference between string and StringBuilder in c#? 
**String**
* It's an immutable object that hold string value.
* Performance wise string is slow because its' create a new instance to override or change the previous value.
* String belongs to System namespace.

**StringBuilder**
* StringBuilder is a mutable object.  
* Performance wise StringBuilder is very fast because it will use same instance of StringBuilder object to perform any operation like insert value in existing string.  
* StringBuilder belongs to System.Text.Stringbuilder namespace.


#### What are partial classes? 
A **partial** class is only use to splits the definition of a class in two or more classes in a same source code file or more than one source files. You can create a class definition in multiple files but it will be compiled as one class at run time and also when you'll create an instance of this class so you can access all the methods from all source file with a same object. Partial classes can be create in the same namespace it's doesn't allowed to create a partial class in different namespace. 


#### Filter out the first 3 even numbers from the list using LINQ 
```csharp
var evenNumbers = List
   .Where(x => x % 2 ==0)
   .Take(3)
```


#### Why to use “finally” block in C#? 
**Finally** block will be executed irrespective of exception. So while executing the code in try block when exception is occurred, control is returned to catch block and at last `finally` block will be executed. So closing connection to database / releasing the file handlers can be kept in `finally` block.


#### What are nullable types in C#? 
C# provides a special data types, the **nullable types**, to which you can assign normal range of values as well as null values.

For example, you can store any value from -2,147,483,648 to 2,147,483,647 or null in a `Nullable<Int32>` variable. Similarly, you can assign true, false, or null in a `Nullable<bool>` variable.


#### What are generics in C#? 
**Generics** allow you to delay the specification of the data type of programming elements in a class or a method, until it is actually used in the program. In other words, generics allow you to write a class or method that can work with any data type.


#### What is Managed or Unmanaged Code? 
* **Managed Code**  - The code, which is developed in .NET framework is known as managed code. This code is directly executed by CLR with the help of managed code execution. Any language that is written in .NET Framework is managed code.
* **Unmanaged Code** - The code, which is developed outside .NET framework is known as unmanaged code. Applications that do not run under the control of the CLR are said to be unmanaged, and certain languages such as C++ can be used to write such applications, which, for example, access low - level functions of the operating system. Background compatibility with the code of VB, ASP and COM are examples of unmanaged code.



#### What are reference types in C#? 
The **reference types** do not contain the actual data stored in a variable, but they contain a reference to the variables.

In other words, they refer to a memory location. Using multiple variables, the reference types can refer to a memory location. If the data in the memory location is changed by one of the variables, the other variable automatically reflects this change in value. Example of built-in reference types are: object, dynamic, and string.


#### What you understand by Value types and Reference types in C#.Net? 
In C# data types can be of two types: **Value Types** and **Reference Types**. Value type variables contain their object (or data) directly. If we copy one value type variable to another then we are actually making a copy of the object for the second variable. Value Type member will located into Stack and reference member will located in Heap always.  


#### What is namespace in C#? 
A **namespace** is designed for providing a way to keep one set of names separate from another. The class names declared in one namespace does not conflict with the same class names declared in another.


#### What is Serialization? 
**Serialization** means saving the state of your object to secondary memory, such as a file.

1.  Binary serialization (Save your object data into binary format).  
2.  Soap Serialization (Save your object data into binary format; mainly used in network related communication).  
3.  XmlSerialization (Save your object data into an XML file).


#### In how many ways you can pass parameters to a method? 
There are three ways that parameters can be passed to a method:

*   **Value parameters** − This method copies the actual value of an argument into the formal parameter of the function. In this case, changes made to the parameter inside the function have no effect on the argument.
*   **Reference parameters** − This method copies the reference to the memory location of an argument into the formal parameter. This means that changes made to the parameter affect the argument.
*   **Output parameters** − This method helps in returning more than one value.


#### Can you return multiple values from a function in C#? 
Yes! Using output parameters. A return statement can be used for returning only one value from a function. However, using output parameters, you can return two values from a function.


#### What is LINQ in C#? 
**LINQ** stands for Language Integrated Query. LINQ has a great power of querying on any source of data. The data source could be collections of objects, database or XML files. We can easily retrieve data from any object that implements the `IEnumerable<T>` interface. 


#### Can multiple catch blocks be executed? 
No, Multiple catch blocks can't be executed. Once the proper catch code executed, the control is transferred to the finally block and then the code that follows the finally block gets executed.


#### What is an Abstract Class? 
An **Abstract class** is a class which is denoted by abstract keyword and can be used only as a Base class. An Abstract class should always be inherited. An instance of the class itself cannot be created. If we do not want any program to create an object of a class, then such classes can be made abstract.

Any method in the abstract class does not have implementations in the same class. But they must be implemented in the child class.


#### What are Custom Exceptions? 
Sometimes there are some errors that need to be handeled as per user requirements. Custom exceptions are used for them and are used defined exceptions.


#### What is the difference between a struct and a class in C#? 
Class and struct both are the user defined data type but have some major difference:  
**  
Struct**

* The struct is value type in C# and it inherits from System.Value Type.
* Struct is usually used for smaller amounts of data.
* Struct can't be inherited to other type.
* A structure can't be abstract.
* No need to create object by new keyword.
* Do not have permission to create any default constructor.

**Class**

* The class is reference type in C# and it inherits from the System.Object Type.
* Classes are usually used for large amounts of data.
* Classes can be inherited to other class.
* A class can be abstract type.
* We can't use an object of a class with using new keyword.
* We can create a default constructor.


#### Why can't you specify the accessibility modifier for methods inside the interface? 
In an interface, we have virtual methods that do not have method definition. All the methods are there to be overridden in the derived class. That's why they all are public.


#### What are the different types of classes in C#? 
The different types of class in C# are:

*   **Partial class** – Allows its members to be divided or shared with multiple .cs files. It is denoted by the keyword _Partial._
*   **Sealed class** – It is a class which cannot be inherited. To access the members of a sealed class, we need to create the object of the class.  It is denoted by the keyword _Sealed_.
*   **Abstract class** – It is a class whose object cannot be instantiated. The class can only be inherited. It should contain at least one method.  It is denoted by the keyword _abstract._
*   **Static class** – It is a class which does not allow inheritance. The members of the class are also static.  It is denoted by the keyword _static_. This keyword tells the compiler to check for any accidental instances of the static class.


#### What are dynamic type variables in C#? 
You can store any type of value in the dynamic data type variable. Type checking for these types of variables takes place at run-time.


## [[⬆]](#toc) <a name=CSS>CSS</a> Interview Questions
#### Explain the three main ways to apply CSS styles to a web page 
Using the inline style attribute on an element
```html
<div>
    <p style="color: maroon;"></p>
</div>
```
Using a `<style>` block in the `<head>` section of your HTML
```html
<head>
    <title>CSS Refresher</title>
    <style>
        body {
            font-family: sans-serif;
            font-size: 1.2em;
        }
    </style>
</head>
```
Loading an external CSS file using the `<link>` tag
```html
<head>
    <title>CSS Refresher</title>
    <link rel="stylesheet" href="/css/styles.css" />
</head>
```


#### What is CSS? 
**CSS** stands for **Cascading Style Sheets**. CSS is used to define styles for your web pages, including the design, layout and variations in display for different devices and screen sizes.

CSS was intended to allow web professionals to separate the content and structure of a website's code from the visual design.


#### How to use variables in Sass? 
Think of variables as a way to store information that you want to reuse throughout your stylesheet. You can store things like colors, font stacks, or any CSS value you think you'll want to reuse. Sass uses the `$` symbol to make something a variable.

```css
$font-stack:    Helvetica, sans-serif;
$primary-color: #333;

body {
  font: 100% $font-stack;
  color: $primary-color;
}
```



#### What is variable interpolation in Sass? Provide some examples.  
 If you want to use variables inside a string, you will have to use a process called **variable interpolation**. To use it you will have to wrap your variables in `#{}`. 

Consider:
```css
$name: 'Gajendar';
$author: 'Author : $name'; // 'Author : $name'

$author: 'Author : #{$name}';
// 'Author : Gajendar'
```

The interpolation method could be useful in situations where the value of a variable is determined by some conditional statements. 


#### What is a CSS rule? 
Web browsers apply **CSS rules** to a document to affect how they are displayed. A CSS rule is formed from:

* A **set of properties**, which have values set to update how the HTML content is displayed,
* A **selector**, which selects the element(s) you want to apply the updated property values to.

A set of CSS rules contained within a stylesheet determines how a webpage should look. 


#### What is DOM (Document Object Model) and how is it linked to CSS? 
The *Document Object Model (DOM)* is a cross-platform and language-independent *application programming interface* that treats an HTML, XHTML, or XML document as a tree structure wherein each node is an object representing a part of the document. 

With the Document Object Model, programmers can create and build documents, navigate their structure, and add, modify, or delete elements and content. The DOM specifies interfaces which may be used to manage XML or HTML documents. 

When a browser displays a document, it must combine the document's content with its style information. The browser converts HTML and CSS into the DOM (Document Object Model). The DOM represents the document in the computer's memory. It combines the document's content with its style.


#### Have you played around with the new CSS Flexbox or Grid specs? 
Yes. Flexbox is mainly meant for 1-dimensional layouts while Grid is meant for 2-dimensional layouts.

Flexbox solves many common problems in CSS, such as vertical centering of elements within a container, sticky footer, etc. Bootstrap and Bulma are based on Flexbox, and it is probably the recommended way to create layouts these days. Have tried Flexbox before but ran into some browser incompatibility issues (Safari) in using `flex-grow`, and I had to rewrite my code using `inline-blocks` and math to calculate the widths in percentages, it wasn't a nice experience.

Grid is by far the most intuitive approach for creating grid-based layouts (it better be!) but browser support is not wide at the moment.


#### What is Sass? 
**Sass** or **Syntactically Awesome StyleSheets** is a *CSS* preprocessor that adds power and elegance to the basic language. It allows you to use variables, nested rules, mixins, inline imports, and more, all with a fully CSS-compatible syntax. Sass helps keep large stylesheets well-organized, and get small stylesheets up and running quickly.

A *CSS preprocessor* is a scripting language that extends CSS by allowing developers to write code in one language and then compile it into CSS. 



#### List out the key features for Sass? 
Key features for Sass include

* Full CSS3-compatible
* Language extensions such as nesting, variables, and mixins
* Many useful functions for manipulating colors and other values
* Advanced features like control directives for libraries
* Well-formatted, customizable output


#### What existing CSS frameworks have you used locally, or in production? How would you change/improve them? 
* **Bootstrap** - Slow release cycle. Bootstrap 4 has been in alpha for almost 2 years. Add a spinner button component, as it is widely used.
* **Semantic UI** - Source code structure makes theme customization extremely hard to understand. Its unconventional theming system is a pain to customize. Hardcoded config path within the vendor library. Not well-designed for overriding variables unlike in Bootstrap.
* **Bulma** - A lot of non-semantic and superfluous classes and markup required. Not backward compatible. Upgrading versions breaks the app in subtle manners.


#### List out the data types that Sass supports 
Sass supports seven main data types:

* **Numbers** - most of the time they are accompanied by a unit of some sort but they are still technically numbers. You can perform basic mathematical operations on these values.

```css
$size: 18;                  // A number
$px-unit: $size * 1px;      // A pixel measurement
$px-string: $size + px;     // A string
$px-number: $px-unit / 1px; // A number
```
* **Strings** - just like CSS, accepts both quoted and unquoted strings, even if they contain spaces

```css
$website: 'SitePoint'; // Stores SitePoint
$name: 'Gajendar' + ' Singh';  // 'Gajendar Singh'
$date:  'Month/Year : ' + 3/2016; // 'Month/Year : 3/2016'
$date:  'Month/Year : ' + (3/2016); // 'Month/Year : 0.00149' 
// This is because 3/2016 is evaluated first.
$variable: 3/2016;      // Evaluated to 0.00149
```
* **Colors** - CSS color expressions come under the `color` data type. You can refer to the colors in hexadecimal notation, as `rgb`, `rgba`, `hsl` and `hsla` values or use native keywords like `pink`, `blue`, etc. 

```css
$color: yellowgreen;           // #9ACD32
color: lighten($color, 15%);    // #b8dc70
color: darken($color, 15%);     // #6c9023
color: saturate($color, 15%);   // #a1e01f
color: desaturate($color, 15%); // #93ba45
color: (green + red);           // #ff8000
```
* **Booleans** - has only two possible values: `true` and `false`

```css
$i-am-true: true;

body {
  @if not $i-am-true {
    background: rgba(255, 0, 0, 0.6);
  } @else {
    background: rgba(0, 0, 255, 0.6); // expected
  }
}
```

* **Null** -  is commonly used to define an empty state, neither `true` or `false`. This is typically the value you want to set when defining a variable without a value, only to prevent the parser from crashing.

```css
.foo {
  content: type-of(null); // null
  content: type-of(NULL); // string
  $bar: 'foo' + null; // invalid null operation: "foo plus null”.
}
```

* **Lists** - are just the Sass version of arrays. You can store multiple types of values in a list.

```css
$font-list: 'Raleway','Dosis','Lato'; // Three comma separated elements
$pad-list: 10px 8px 12px; // Three space separated elements
$multi-list: 'Roboto',15px 1.3em; // This multi-list has two lists.
```
* **Maps** -  Sass maps are like associative arrays. A map stores both keys and values associated with those keys.

```css
$styling: (
  'font-family': 'Lato',
  'font-size': 1.5em,
  'color': tomato,
  'background': black
);

h1 {
  color: map-get($styling, 'color');
  background: map-get($styling, 'background');
}
```


#### Explain CSS sprites, and how you would implement them on a page or site. 
*CSS sprites* combine multiple images into one single larger image. It is commonly used technique for icons (Gmail uses it). 

* Use a sprite generator that packs multiple images into one and generate the appropriate CSS for it.
* Each image would have a corresponding CSS class with `background-image`, `background-position` and `background-size` properties defined.
* To use that image, add the corresponding class to your element.

**Advantages**:

* Reduce the number of HTTP requests for multiple images (only one single request is required per spritesheet). But with HTTP2, loading multiple images is no longer much of an issue.
* Advance downloading of assets that won’t be downloaded until needed, such as images that only appear upon `:hover` pseudo-states. Blinking wouldn't be seen.


#### What Selector Nesting in Sass is used for? 
Sass *let you nest* your CSS selectors in a way that follows the same visual hierarchy of your HTML.  CSS, on the other hand, doesn't have any visual hierarchy.

Consider example (scss):
```css
.parent {
  color: red;

  .child {
    color: blue;
  }
}
```
Result (css):
```css
.parent {
  color: red;
}

.parent .child {
  color: blue;
}
```



#### Explain what is a @extend directive used for in Sass? 
Using `@extend` lets you share a set of CSS properties from one selector to another. It helps keep your Sass very dry.

Consider:
```css
%message-shared {
  border: 1px solid #ccc;
  padding: 10px;
  color: #333;
}

.message {
  @extend %message-shared;
}

.success {
  @extend %message-shared;
  border-color: green;
}

.error {
  @extend %message-shared;
  border-color: red;
}

.warning {
  @extend %message-shared;
  border-color: yellow;
}
```
CSS output:
```css
.message, .success, .error, .warning {
  border: 1px solid #cccccc;
  padding: 10px;
  color: #333;
}

.success {
  border-color: green;
}

.error {
  border-color: red;
}

.warning {
  border-color: yellow;
}
```

 


#### Explain the CSS “box model” and the layout components that it consists of 
The CSS box model is a rectangular layout paradigm for HTML elements that consists of the following:

* **Content** - The content of the box, where text and images appear
* **Padding** - A transparent area surrounding the content (i.e., the amount of space between the border and the content)
* **Border** - A border surrounding the padding (if any) and content
* **Margin** - A transparent area surrounding the border (i.e., the amount of space between the border and any neighboring elements)


#### What is the difference between classes and IDs in CSS? 
* **IDs** — Meant to be unique within the document. Can be used to identify an element when linking using a fragment identifier. Elements can only have one id attribute.

* **Classes** — Can be reused on multiple elements within the document. Mainly for styling and targeting elements.


#### Describe floats and how they work 
*Float* is a CSS positioning property. Floated elements remain a part of the flow of the web page. This is distinctly different than page elements that use absolute positioning. Absolutely positioned page elements are removed from the flow of the webpage.

```css
#sidebar {
  float: right; // left right none inherit			
}
```
The CSS clear property can be used to be positioned below `left`/`right`/`both` floated elements.


## [[⬆]](#toc) <a name=Career>Career</a> Interview Questions
## [[⬆]](#toc) <a name=Clojure>Clojure</a> Interview Questions
## [[⬆]](#toc) <a name=CodeProblems>Code Problems</a> Interview Questions
#### Test divisors of three 
**Details:**
You will be given 2 parameters: a low and high number. Your goal is to print all numbers between low and high, and for each of these numbers print whether or not the number is divisible by 3. If the number is divisible by 3, print the word "div3" directly after the number.

We'll solve this problem by first creating a loop that will print each number from low to high. Once we have the code for that written, we'll add a conditional that will check if the number is evenly divisible by 3 by using the mod operator.

```js
function test_divisors(low, high) {
  
  // we'll store all numbers and strings within an array
  // instead of printing directly to the console
  var output = [];
  
  for (var i = low; i <= high; i++) {
    
    // simply store the current number in the output array
    output.push(i);
    
    // check if the current number is evenly divisible by 3
    if (i % 3 === 0) { output.push('div3'); }
    
  }
  
  // return all numbers and strings
  return output;
  
}

test_divisors(2, 10);
```


#### Sum of Array Plus One 
**Details:**
Write a function that takes an array of integers and returns the sum of the integers after adding 1 to each.

```js
// ES5 method is nice and clean
exports.es5 = function (array) {
  return array.reduce(function (memo, num) {
    return memo + num;
  }, array.length);
};

// Without array.reduce method isn't much different
exports.iterative = function (array) {
  var result = array.length;

  for (var i = 0; i < array.length; i++) {
    result += array[i];
  }

  return result;
};
```


#### String Rotation 
**Details:**
Find out if a string is a rotation of another string. E.g. `ABCD` is a rotation of `BCDA` but not `ACBD`.

First make sure `a` and `b` are of the same length. Then check to see if `b` is a substring of `a` concatenated with `a`:

```js
module.exports = function (a, b) {
  return a.length === b.length && (a + a).indexOf(b) > -1;
};
```




#### Oddball sum 
**Details:**
Write a function called `oddball_sum` which takes in a list of numbers and returns the sum of all the odd elements. Try to solve with and without `reduce` function.

To solve this challenge we'll simply loop through the array while maintaining a final count, and every time an odd number is encountered we'll add it to the count.

Without `reduce`:
```js
function oddball_sum(nums) {
 
  // final count of all odd numbers added up
  var final_count = 0;
  
  // loop through entire list
  for (var i = 0; i < nums.length; i++) {
    
    // we divide by 2, and if there is a remainder then
    // the number must be odd so we add it to final_count
    if (nums[i] % 2 === 1) {
      final_count += nums[i]
    }
    
  }
  
  return final_count;
  
}

oddball_sum([1, 2, 3, 4, 5]); 
```

With `reduce`:

```js
function oddball_sum(nums) {
  return nums.reduce(function(total, item){
  	if (item % 2 === 1) {
  		return total += item;
  	}
  	return total;
  });
}
```


#### Simple clock angle 
**Details:**
You will be given a number `N` that represents where the minute hand currently is on a clock. Your program should return the angle that is formed by the minute hand and the `12` o'clock mark on the clock.

If the input is `15` then your program should return `90` because a `90`-degree angle is formed by the minute hand and the `12` o'clock mark on the clock. We'll solve this challenge by first calculating what angle is created by each minute passing on a clock. Once we calculate this number, we multiply it by the input to determine the final angle. 

A method to solve such problems is to consider the rate of change of the angle in degrees per minute. The hour hand of a normal `12-hour` analogue clock turns `360°` in `12` hours (`720` minutes) or `0.5°` per minute. The minute hand rotates through `360°` in `60` minutes or `6°` per minute.

```js
function simpleClockAngle(num) {

  // we got 6 because 360/60 = 6
  // 360 represents the full number of a degrees in a circle and
  // 60 is the number of minutes on a clock, so dividing these two numbers
  // gives us the number of degrees for one minute
  return 6 * num;

}

simpleClockAngle(15);
```




#### Sum of several arrays 
**Details:**
You will be given an array of several arrays that each contain integers and your goal is to write a function that will sum up all the numbers in all the arrays. For example, if the input is `[[3, 2], [1], [4, 12]]` then your program should output `22` because `3 + 2 + 1 + 4 + 12 = 22`. Solve without and with `reduce`.

We will solve this challenge by looping through the entire array, and then looping through each inner array adding up all the numbers.

```js
function sum_array(arr) {
  // store our final answer
  var sum = 0;
  // loop through entire array
  for (var i = 0; i < arr.length; i++) {
    // loop through each inner array
    for (var j = 0; j < arr[i].length; j++) {
      // add this number to the current final sum
      sum += arr[i][j];
    }
  }
  
  return sum;
}

sum_array([[3, 2], [1], [4, 12]]);
```

With `reduce`:

```js
function sumArray(arr) {
  return arr.reduce((t, e) => t.concat(e)).reduce((t, e) => t + e)
}
```


#### Lucky sevens 
**Details:**
Write a function called `lucky_sevens` which takes an array of integers and returns true if any three consecutive elements sum to 7.

To solve this challenge we'll simply loop through the array starting at the 3rd position, and checking if the number at this index plus the two previous elements sums to 7. We continue doing this as we loop through the entire array. Once we find three elements that sum to 7, we simply return `true`. If we reach the end of the array without finding elements that sum to 7, we return `false`.

```js
function lucky_sevens(arr) {
  
  // if less than 3 elements then this challenge is not possible
  if (arr.length < 3) {
    return "not possible";
  }
  
  // because we know there are at least 3 elements we can
  // start the loop at the 3rd element in the array (i=2)
  // and check it along with the two previous elements (i-1) and (i-2)
  for (var i = 2; i < arr.length; i++) {
    if (arr[i] + arr[i-1] + arr[i-2] === 7) {
      return true; 
    }
  }
  
  // if loop is finished and no elements summed to 7
  return false;
  
}

lucky_sevens([2, 1, 5, 1, 0]);
``` 




#### Two sum problem 
**Details:**
Given an integer `x` and a sorted array a of `N` distinct integers, design a linear-time algorithm to determine if there exists two distinct indices `i` and `j` such that `a[i] + a[j] == x`

For example, if the array is `[3, 5, 2, -4, 8, 11]` and the sum is `7`, 
your program should return `[[11, -4], [2, 5]]` because `11 + -4 = 7` and `2 + 5 = 7`.

The algorithm below makes use of hash tables which have a constant lookup time. As we pass through each element in the array, we check to see if S minus the current element exists in the hash table. We only need to loop through the array once, resulting in a running time of `O(n)` since each lookup and insertion in a hash table is `O(1)`.

```js
// our two sum function which will return
// all pairs in the array that sum up to S
function twoSum(arr, S) {

  var sums = [];
  var hashTable = {};

  // check each element in array
  for (var i = 0; i < arr.length; i++) {
 
    // calculate S - current element
    var sumMinusElement = S - arr[i];

    // check if this number exists in hash table
    // if so then we found a pair of numbers that sum to S
    if (hashTable[sumMinusElement.toString()] !== undefined) { 
      sums.push([arr[i], sumMinusElement]);
    }

    // add the current number to the hash table
    hashTable[arr[i].toString()] = arr[i];

  }

  // return all pairs of integers that sum to S
  return sums;

}

twoSum([3, 5, 2, -4, 8, 11], 7);
```




#### Implement a queue using a linked list 
We will store a reference to the front and back of the queue in order to make enqueuing and dequeuing run in `O(1)` constant time. Every time we want to insert into the queue, we add the new element to the end of the linked list and update the back pointer. When we want to dequeue we return the first node in the linked list and update the front pointer.

```js
// queue is initially empty
var Queue = {front: null, back: null};

// we will use a node to keep track of the elements
// in the queue which is represented by a linked list
function Node(data, next) {
  this.data = data;
  this.next = next;
} 

// add elements to queue in O(1) time
function Enqueue(element) {
  var N = new Node(element, null);
  if (Queue.back === null) {
    Queue.front = N;
    Queue.back = N; 
  } else { 
    Queue.back.next = N; 
    Queue.back = Queue.back.next;
  } 
}

// remove first element from queue in O(1) time
function Dequeue() {
  if (Queue.front !== null) { 
    var first = Queue.front;
    Queue.front = Queue.front.next; 
    return first.data;
  } else {
    if (Queue.back !== null) { Queue.back = null; }
    return 'Cannot dequeue because queue is empty';
  }
}

Enqueue('a'); 
Enqueue('b'); 
Enqueue('c'); 
Dequeue();
```


#### Tree Level Order Print 
**Details:**
Given a binary tree of integers, print it in level order. The output will contain space between the numbers in the same level, and new line between different levels.

```js
module.exports = function (root) {
  // Doing a breadth first search using recursion.
  (function walkLevel (children) {
    // Create a new queue for the next level.
    var queue = [],
        output;

    // Use the map function to easily join all the nodes together while pushing
    // it's children into the next level queue.
    output = children.map(function (node) {
      // Assuming the node has children stored in an array.
      queue = queue.concat(node.children || []);
      return node.value;
    }).join(' ');

    // Log the output at each level.
    console.log(output);

    // If the queue has values in it, recurse to the next level and walk
    // along it.
    queue.length && walkLevel(queue);
  })([root]);
};
```



#### Stock maximum profit 
**Details:**
You will be given a list of stock prices for a given day and your goal is to return the maximum profit that could have been made by buying a stock at the given price and then selling the stock later on. 

For example if the input is: 

```js
[45, 24, 35, 31, 40, 38, 11] 
```

then your program should return 16 because if you bought the stock at $24 and sold it at $40, a profit of $16 was made and this is the largest profit that could be made. If no profit could have been made, return -1.

We'll solve the challenge the following way:

1. Iterate through each number in the list.
2. At the ith index, get the `i+1` index price and check if it is larger than the ith index price.
3. If so, set `buy_price = i` and `sell_price = i+1`. Then calculate the profit: `sell_price - buy_price`.
4. If a stock price is found that is cheaper than the current `buy_price`, set this to be the new buying price and continue from step 2.
5. Otherwise, continue changing only the `sell_price` and keep `buy_price` set.

This algorithm runs in linear time, making only one pass through the array, so the running time in the worst case is `O(n)`.

```js
function StockPicker(arr) { 
  
  var max_profit = -1;
  var buy_price = 0;
  var sell_price = 0;
  
  // this allows our loop to keep iterating the buying
  // price until a cheap stock price is found
  var change_buy_index = true;
  
  // loop through list of stock prices once
  for (var i = 0; i < arr.length-1; i++) {
    
    // selling price is the next element in list
    sell_price = arr[i+1]; 
    
    // if we have not found a suitable cheap buying price yet
    // we set the buying price equal to the current element
    if (change_buy_index) { buy_price = arr[i]; }
    
    // if the selling price is less than the buying price
    // we know we cannot make a profit so we continue to the 
    // next element in the list which will be the new buying price
    if (sell_price < buy_price) {
      change_buy_index = true; 
      continue;
    }
    
    // if the selling price is greater than the buying price
    // we check to see if these two indices give us a better 
    // profit then what we currently have
    else { 
      var temp_profit = sell_price - buy_price;
      if (temp_profit > max_profit) { max_profit = temp_profit; }
      change_buy_index = false;
    }
    
  }
  
  return max_profit;
         
}

StockPicker([44, 30, 24, 32, 35, 30, 40, 38, 15]);  
```


#### Find Word Positions in Text 
**Details:**
Given a text file and a word, find the positions that the word occurs in the file. We’ll be asked to find the positions of many words in the same file.

Since we’ll have to answer multiple queries, precomputation would be useful. We’ll build a data structure that stores the positions of all the words in the text file. This is known as inverted index.

```js
module.exports = function (text) {
  var trie   = {},
      pos    = 0,
      active = trie; // Start the active structure as the root trie structure

  // Suffix a space after the text to make life easier
  text += ' ';

  // Loop through the input text adding it to the trie structure
  for (var i = 0; i < text.length; i++) {
    // When the character is a space, restart
    if (text[i] === ' ') {
      // If the current active doesn't equal the root, set the position
      if (active !== trie) {
        (active.positions = active.positions || []).push(pos);
      }
      // Reset the positions and the active part of the data structure
      pos    = i;
      active = trie;
      continue;
    }

    // Set the next character in the structure up
    active[text[i]] = (active[text[i]] || {});
    active = active[text[i]];
  }

  // Return a function that accepts a word and looks it up in the trie structure
  return function (word) {
    var i      = -1,
        active = trie;

    while (word[++i]) {
      if (!active[word[i]]) { return []; }
      active = active[word[i]];
    }

    return active.positions;
  };
};
```


#### Determine overlapping numbers in ranges 
**Details:**
You will be given an array with `5` numbers. The first 2 numbers represent a range, and the next two numbers represent another range. The final number in the array is `X`. The goal of your program is to determine if both ranges overlap by at least `X` numbers. For example, in the array `[4, 10, 2, 6, 3]` the ranges `4` to `10` and `2` to `6` overlap by at least `3` numbers `(4, 5, 6)`, so your program should return `true`. Solve with and without looping.

If the array is `[10, 20, 4, 14, 4]` then the ranges are:

```sh
10 11 12 13 14 15 16 17 18 19 20
4 5 6 7 8 9 10 11 12 13 14
```

These ranges overlap by at least `4` numbers, namely: `10, 11, 12, 13, 14` so your program should return `true`.

With loop:
```js
function OverlappingRanges(arr) {

  // keep a count of how many numbers overlap
  var counter = 0;
  
  // loop through one of the ranges
  for (var i = arr[0]; i < arr[1]; i++) {

    // check if a number within the first range exists
    // in the second range
    if (i >= arr[2] && i <= arr[3]) { 
      counter += 1;
    }

  }
 
  // check if the numbers that overlap is equal to or greater
  // than the last number in the array
  return (counter >= arr[4]) ? true : false;
}

OverlappingRanges([4, 10, 2, 6, 3]); 
```

Without loop:

```js
function overlapping(input){
  var nums1 = listOfNums(input[0], input[1]);
  var nums2 = listOfNums(input[2], input[3]);
  var overlappingNum = 0;

  if(nums1[0] >= nums2[0] && nums1[0] <= nums2[1]){
    overlappingNum =  nums2[1] - nums1[0] + 1;
  } else {
    overlappingNum =  nums1[1] - nums2[0] + 1;
  }
  if(overlappingNum >= input[4]){
    return true;
  }
}

function listOfNums(a, b){
  var start = a;
  var end = b;
  if(a > b){
    start = b;
    end = a;
  }

  return [a, b];
}

var a = [4, 10, 2, 6, 3];
overlapping(a)
```



#### Throttle Function Implementation 
**Details:**
Write a function that accepts a function and timeout, `x`, in number of milliseconds. It returns a function that can only be executed once per `x` milliseconds. This can be useful for limiting the number of time and computation heavy function that are run. For example, making AJAX requests to an autocompletion API.

Once written, add a third parameter that will allow the function to be executed immediately if set to true. Otherwise the function will run at the end of the timeout period.

```js
module.exports = function (fn, delay, execAsap) {
  var timeout; // Keeps a reference to the timeout inside the returned function

  return function () {
    // Continue to pass through the function execution context and arguments
    var that = this,
        args = arguments;

    // If there is no timeout variable set, proceed to create a new timeout
    if (!timeout) {
      execAsap && fn.apply(that, args);

      timeout = setTimeout(function () {
        execAsap || fn.apply(that, args);
        // Remove the old timeout variable so the function can run again
        timeout = null;
      }, delay || 100);
    }
  };
};
```



#### Dutch national flag sorting problem 
**Details:**
For this problem, your goal is to sort an array of `0`, `1`, `2` but you must do this in place, in linear time and without any extra space (such as creating an extra array). This is called the *Dutch national flag sorting problem*. For example, if the input array is `[2,0,0,1,2,1]` then your program should output `[0,0,1,1,2,2]` and the algorithm should run in `O(n)` time.

The solution to this algorithm will require 3 pointers to iterate throughout the array, swapping the necessary elements.

1. Create a low pointer at the beginning of the array and a high pointer at the end of the array.
2. Create a mid pointer that starts at the beginning of the array and iterates through each element.
3. If the element at `arr[mid]` is a `2`, then swap `arr[mid]` and `arr[high]` and decrease the high pointer by `1`.
4. If the element at `arr[mid]` is a `0`, then swap `arr[mid]` and `arr[low]` and increase the low and mid pointers by `1`.
5. If the element at `arr[mid]` is a `1`, don't swap anything and just increase the mid pointer by `1`.

```js
function swap(arr, i1, i2) {
  var temp = arr[i1];
  arr[i1] = arr[i2];
  arr[i2] = temp;
}

function dutchNatFlag(arr) {
  
  var low = 0;
  var mid = 0;
  var high = arr.length - 1;
  
  // one pass through the array swapping
  // the necessary elements in place
  while (mid <= high) {
    if      (arr[mid] === 0) { swap(arr, low++, mid++); }
    else if (arr[mid] === 2) { swap(arr, mid, high--); }
    else if (arr[mid] === 1) { mid++; }
  }
  
  return arr;
  
}

dutchNatFlag([2,2,2,0,0,0,1,1]); 
```


#### Step-by-step solution for step counting using recursion 
**Details:**

Suppose you want climb a staircase of N steps, and on each step you can take either 1 or 2 steps. How many distinct ways are there to climb the staircase? For example, if you wanted to climb 4 steps, you can take the following distinct number of steps:

```sh
1) 1, 1, 1, 1
2) 1, 1, 2
3) 1, 2, 1
4) 2, 1, 1
5) 2, 2
```

So there are 5 distinct ways to climb 4 steps. We want to write a function, using recursion, that will produce the answer for any number of steps. 


The solution to this problem requires recursion, which means to solve for a particular `N`, we need the solutions for previous N's. The solution for N steps is equal to the solutions for `N - 1` steps plus `N - 2` steps.

```js
function countSteps(N) {
  
  // just as in our solution explanation above, we know that to climb 1 step
  // there is only 1 solution, and for 2 steps there are 2 solutions
  if (N === 1) { return 1; }
  if (N === 2) { return 2; }
  
  // for all N > 2, we add the previous (N - 1) + (N - 2) steps to get
  // an answer recursively
  return countSteps(N - 1) + countSteps(N - 2);
  
}

// the solution for N = 6 will recursively be solved by calculating
// the solution for N = 5, N = 4, N = 3, and N = 2 which we know is 2
countSteps(6); 
```



#### Implement Bubble Sort 
The steps in the bubble sort algorithm are:

1. Loop through the whole array starting from index `1`
2. If the number in the array at index `i-1` is greater than i, swap the numbers and continue
3. Once the end of the array is reached, start looping again from the beginning
4. Once no more elements can be swapped, the sorting is complete

```js
function swap(arr, i1, i2) {
  var temp = arr[i1];
  arr[i1] = arr[i2];
  arr[i2] = temp;
}

function bubblesort(arr) {
  
  var swapped = true;
  
  // keep going unless no elements can be swapped anymore
  while (swapped) {
    
    // set swapped to false so that the loop stops
    // unless two element are actually swapped
    swapped = false;

    // loop through the whole array swapping adjacent elements
    for (var i = 1; i < arr.length; i++) {
      if (arr[i-1] > arr[i]) {
        swap(arr, i-1, i);
        swapped = true;
      }
    }
    
  }
  
  return arr;
         
}

bubblesort([103, 45, 2, 1, 97, -4, 67]); 
```


#### Implement a queue using two stacks 
Suppose we push `a`, `b`, `c` to a stack. If we are trying to implement a queue and we call the dequeue method 3 times, we actually want the elements to come out in the order: `a`, `b`, `c`, which is in the opposite order they would come out if we popped from the stack. So, basically, we need to access the elements in the reverse order that they exist in the stack. 

*Algorithm* for queue using two stacks:

1. When calling the enqueue method, simply push the elements into the stack 1.
2. If the dequeue method is called, push all the elements from stack 1 into stack 2, which reverses the order of the elements. Now pop from stack 2.

The worst case running time for implementing these operations using stacks is `O(n)` because you need to transfer n elements from stack 1 to stack 2 when a dequeue method is called. Pushing to stack 1 is simply `O(1)`.

```js
// implement stacks using plain arrays with push and pop functions
var Stack1 = [];
var Stack2 = [];

// implement enqueue method by using only stacks
// and the push and pop functions
function Enqueue(element) {
  Stack1.push(element);
}

// implement dequeue method by pushing all elements
// from stack 1 into stack 2, which reverses the order
// and then popping from stack 2
function Dequeue() {
  if (Stack2.length === 0) {
    if (Stack1.length === 0) { return 'Cannot dequeue because queue is empty'; }
    while (Stack1.length > 0) {
      var p = Stack1.pop();
      Stack2.push(p);
    }
  }
  return Stack2.pop();
}

Enqueue('a');
Enqueue('b');
Enqueue('c');
Dequeue(); 
```


## [[⬆]](#toc) <a name=DataScience>Data Science</a> Interview Questions
#### What is Data Science? 
Data Science is an interdisciplinary field of different scientific methods, techniques, processes, and knowledge that is used to transform the data of different types such as structured, unstructured and semi-structured data into the required format or representation.

Data Science concepts include different concepts such as statistics, regression, mathematics, computer science, algorithms, data structures and information science with also including some subfields such as data mining, machine learning, and databases etc.,

Data Science concept has recently evolved to a greater extent in the area of computing technology in order to perform data analysis on the existing data where the growth of data is in terms of an exponential with respect to time.

Data Science is the study of various types of data such as structured, semi-structured and unstructured data in any form or formats available in order to get some information out of it.

Data Science consists of different technologies used to study data such as data mining, data storing, data purging, data archival, data transformation etc., in order to make it efficient and ordered. Data Science also includes the concepts like Simulation, modeling, analytics, machine learning, computational mathematics etc.


#### What is the best Programming Language to use in Data Science? 
Data Science can be handled by using programming languages like Python or R programming language. These two are the two most popular languages being used by the Data Scientists or Data Analysts. R and Python are open source and are free to use and came into existence during the 1990s.

Python and R have different advantages depending on the applications and required a business goal. Python is better to be used in the cases of repeated tasks or jobs and for data manipulations whereas R programming can be used for querying or retrieving datasets and customized data analysis.

Mostly Python is preferred for all types of data science applications where some time R programming is preferred in the cases of high or complex data applications. Python is easier to learn and has less learning curve whereas R has a deep learning curve.

Python is mostly preferred in all the cases which is a general-purpose programming language and can be found in many applications other than Data Science too. R is mostly seen in Data Science area only where it is used for data analysis in standalone servers or computing separately.


#### Why is data cleaning essential in Data Science? 
Data cleaning is more important in Data Science because the end results or the outcomes of the data analysis come from the existing data where useless or unimportant need to be cleaned periodically as of when not required. This ensures the data reliability & accuracy and also memory is freed up.

Data cleaning reduces the data redundancy and gives good results in data analysis where some large customer information exists and that should be cleaned periodically. In the businesses like e-commerce, retail, government organizations contain large customer transaction information which is outdated and needs to be cleaned.

Depending on the amount or size of data, suitable tools or methods should be used to clean the data from the database or big data environment. There are different types of data existing in a data source such as dirty data, clean data, mixed clean and dirty data and sample clean data.

Modern data science applications rely on machine learning model where the learner learns from the existing data. So, the existing data should always be cleanly and well maintained to get sophisticated and good outcomes during the optimization of the system.


#### What is Linear Regression in Data Science? 
Linear Regression is a technique used in supervised machine learning algorithmic process in the area of Data Science. This method is used for predictive analysis.

Predictive analytics is an area within Statistical Sciences where the existing information will be extracted and processed to predict the trends and outcomes pattern. The core of the subject lies in the analysis of existing context to predict an unknown event.

The process of Linear Regression method is to predict a variable called target variable by making the best relationship between the dependent variable and an independent variable. Here dependent variable is outcome variable and also response variable whereas the independent variable is predictor variable or explanatory variable.

For example in real life, depending on the expenses occurred in this financial year or monthly expenses, the predictions happen by calculating the approximate upcoming months or financial years expenses.

In this method, the implementation can be done by using Python programming technique where this is the most important method used in Machine Learning technique under the area of Data Science.

Linear regression is also called Regression analysis that comes under the area of Statistical Sciences which is integrated together with Data Science.


#### What is A/B testing in Data Science? 
A/B testing is also called as Bucket Testing or Split Testing. This is the method of comparing and testing two versions of systems or applications against each other to determine which version of application performs better. This is important in the cases where multiple versions are shown to the customers or end users in order to achieve the goals.

In the area of Data Science, this A/B testing is used to know which variable out of the existing two variables in order to optimize or increase the outcome of the goal. A/B testing is also called Design of Experiment. This testing helps in establishing a cause and effect relationship between the independent and dependent variables.

This testing is also simply a combination of design experimentation or statistical inference. Significance, Randomization and Multiple Comparisons are the key elements of the A/B testing.

The significance is the term for the significance of statistical tests conducted. Randomization is the core component of the experimental design where the variables will be balanced. Multiple comparisons are the way of comparing more variables in the case of customer interests that causes more false positives resulting in the requirement of correction in the confidence level of a seller in the area of e-commerce.

A/B testing is the important one in the area of Data Science in predicting the outcomes.


## [[⬆]](#toc) <a name=DataStructures>Data Structures</a> Interview Questions
#### What is data-structure? 
Data structure availability may vary by programming languages. Commonly available data structures are:
* list, 
* arrays, 
* stack, 
* queues, 
* graph, 
* tree etc.


#### What is a graph? 
A **graph** is a pictorial representation of a set of objects where some pairs of objects are connected by links. The interconnected objects are represented by points termed as vertices, and the links that connect the vertices are called edges.


#### What is linear searching? 
**Linear search** or sequential search is a method for finding a target value within a list. It sequentially checks each element of the list for the target value until a match is found or until all the elements have been searched. Linear search runs in at worst *linear time* and makes at most `n` comparisons, where `n` is the length of the list. 

* Worst-case performance	`O(n)`
* Best-case performance	`O(1)`
* Average performance	`O(n)`
* Worst-case space complexity	`O(1)` iterative

In theory other search algorithms may be faster than linear search (for instance binary search), in practice even on medium-sized arrays (around 100 items or less) it might be infeasible to use anything else. 


#### What is algorithm? 
**Algorithm** is a step by step procedure, which defines a set of instructions to be executed in certain order to get the desired output.


#### What is linear data structure and what are common operations to perform on it? 
A *linear data-structure* has sequentially arranged data items. The next item can be located in the next memory address. It is stored and accessed in a sequential manner. **Array** and **list** are example of linear data structure.

The following operations are commonly performed on any data-structure:

*   **Insertion** − adding a data item
*   **Deletion** − removing a data item
*   **Traversal** − accessing and/or printing all data items
*   **Searching** − finding a particular data item
*   **Sorting** − arranging data items in a pre-defined sequence


#### What is an average case complexity of Bubble Sort? 
**Bubble sort**, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. 

Bubble sort has a worst-case and average complexity of `О(n2)`, where `n` is the number of items being sorted. Most practical sorting algorithms have substantially better worst-case or average complexity, often `O(n log n)`. Therefore, bubble sort is not a practical sorting algorithm.




#### What examples of greedy algorithms do you know? 
The below given problems find their solution using greedy algorithm approach:

*   Travelling Salesman Problem
*   Prim's Minimal Spanning Tree Algorithm
*   Kruskal's Minimal Spanning Tree Algorithm
*   Dijkstra's Minimal Spanning Tree Algorithm
*   Graph - Map Coloring
*   Graph - Vertex Cover
*   Knapsack Problem
*   Job Scheduling Problem


#### What are some examples of divide and conquer algorithms? 
The below given problems find their solution using divide and conquer algorithm approach:

*   Merge Sort
*   Quick Sort
*   Binary Search
*   Strassen's Matrix Multiplication
*   Closest pair (points)


#### What are some examples of dynamic programming algorithms? 
The below given problems find their solution using divide and conquer algorithm approach:

*   Fibonacci number series
*   Knapsack problem
*   Tower of Hanoi
*   All pair shortest path by Floyd-Warshall
*   Shortest path by Dijkstra
*   Project scheduling


#### Why do we use stacks? 
In data-structure, **stack** is an Abstract Data Type (ADT) used to store and retrieve values in Last In First Out (LIFO) method.

Stacks follows LIFO method and addition and retrieval of a data item takes only `Ο(n)` time. Stacks are used where we need to access data in the reverse order or their arrival. Stacks are used commonly in recursive function calls, expression parsing, depth first traversal of graphs etc.

The below operations can be performed on a stack:

*   **push()** − adds an item to stack
*   **pop()** − removes the top stack item
*   **peek()** − gives value of top item without removing it
*   **isempty()** − checks if stack is empty
*   **isfull()** − checks if stack is full


#### Why do we use queues? 
**Queue** is an abstract data structure (ADS), somewhat similar to stack. In contrast to stack, queue is opened at both end. One end is always used to insert data (enqueue) and the other is used to remove data (dequeue). Queue follows First-In-First-Out (FIFO) methodology, i.e., the data item stored first will be accessed first.

As queues follows FIFO method, they are used when we need to work on data-items in exact sequence of their arrival. Every operating system maintains queues of various processes. Priority queues and breadth first traversal of graphs are some examples of queues.

The below operations can be performed on a queue:
*   **enqueue()** − adds an item to rear of the queue
*   **dequeue()** − removes the item from front of the queue
*   **peek()** − gives value of front item without removing it
*   **isempty()** − checks if stack is empty
*   **isfull()** − checks if stack is full


#### What is Selection Sort? 
**Selection sort** is in-place sorting technique. It divides the data set into two sub-lists: sorted and unsorted. Then it selects the minimum element from unsorted sub-list and places it into the sorted list. This iterates unless all the elements from unsorted sub-list are consumed into sorted sub-list.


#### Why we need to do algorithm analysis? 
A problem can be solved in more than one ways. So, many solution algorithms can be derived for a given problem. We analyze available algorithms to find and implement the best suitable algorithm.

An algorithm are generally analyzed on two factors − time and space. That is, how much **execution** time and how much **extra space** required by the algorithm.


#### What is the difference between Linear Search and Binary Search? 
* A **linear search** looks down a list, one item at a time, without jumping. In complexity terms this is an `O(n)` search - the time taken to search the list gets bigger at the same rate as the list does.

* A **binary search** is when you start with the middle of a sorted list, and see whether that's greater than or less than the value you're looking for, which determines whether the value is in the first or second half of the list. Jump to the half way through the sublist, and compare again etc. In complexity terms this is an `O(log n)` search - the number of search operations grows more slowly than the list does, because you're halving the "search space" with each operation.

Comparing the two:

- Binary search requires the input data to be sorted; linear search doesn't
- Binary search requires an *ordering* comparison; linear search only requires equality comparisons
- Binary search has complexity `O(log n)`; linear search has complexity O(n)
- Binary search requires random access to the data; linear search only requires sequential access (this can be very important - it means a linear search can *stream* data of arbitrary size)


#### What is asymptotic analysis of an algorithm? 
**Asymptotic analysis** of an algorithm, refers to defining the mathematical boundation/framing of its run-time performance. Using asymptotic analysis, we can very well conclude the best case, average case and worst case scenario of an algorithm.

Asymptotic analysis can provide three levels of mathematical binding of execution time of an algorithm:

*   Best case is represented by Ω(n) notation.
*   Worst case is represented by Ο(n) notation.
*   Average case is represented by Θ(n) notation.


## [[⬆]](#toc) <a name=DesignPatterns>Design Patterns</a> Interview Questions
#### What are the main categories of Design Patterns? 
The Design patterns can be classified into three main categories:

* Creational Patterns
* Behavioral Patterns
* Functional Patterns


#### What is a pattern? 
*Patterns* in programming are like recipes in cooking. They are not ready dishes, but instructions for slicing and dicing products, cooking them, serving them and so forth.

**Pattern content**
As a rule, a pattern description consists of the following:

* a problem that the pattern solves;
* motivation for solving the the problem using the method suggested by the pattern;
* structures of classes comprising the solution;
* an example in one of the programming languages;
* a description of the nuances of pattern implementation in various contexts;
relations with other patterns.


#### What is Singleton pattern? 
**Singleton pattern** comes under *creational* patterns category and introduces a single class which is responsible to create an object while making sure that only single object gets created. This class provides a way to access its only object which can be accessed directly without need to instantiate the object of the class.

<div class="text-center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Singleton_UML_class_diagram.svg/220px-Singleton_UML_class_diagram.svg.png" class="img-fluid"/>
</div>



#### What is Design Patterns and why anyone should use them? 
Design patterns are a well-described solution to the most commonly encountered problems which occur during software development. 

Design pattern represents the best practices evolved over a period of time by experienced software developers. They promote reusability which leads to a more robust and maintainable code.


#### What is Factory pattern? 
**Factory pattern** is one of most used design pattern and comes under *creational* patterns category.

In Factory pattern, we create object without exposing the creation logic to the client and refer to newly created object using a *common interface*.

<div class="text-center">
<img src="https://www.tutorialspoint.com/design_pattern/images/factory_pattern_uml_diagram.jpg" class="img-fluid"/>
</div>

<br/>
**Pro's**:  

*   Allows you to hide implementation of an application seam (the core interfaces that make up your application)
*   Allows you to easily test the seam of an application (that is to mock/stub) certain parts of your application so you can build and test the other parts
*   Allows you to change the design of your application more readily, this is known as loose coupling

**Con's**  

*   Makes code more difficult to read as all of your code is behind an abstraction that may in turn hide abstractions.
*   Can be classed as an anti-pattern when it is incorrectly used, for example some people use it to wire up a whole application when using an IOC container, instead use Dependency Injection.


#### What is Iterator pattern? 
**Iterator pattern** is very commonly used design pattern in Java and .Net programming environment. This pattern is used to get a way to access the elements of a collection object in sequential manner without any need to know its underlying representation. Iterator pattern falls under _behavioral_ pattern category.

<div class="text-center">
<img src="https://upload.wikimedia.org/wikipedia/commons/c/c5/W3sDesign_Iterator_Design_Pattern_UML.jpg" class="img-fluid"/>
</div>


#### What is Inversion of Control? 

*Inversion of control* is a broad term but for a software developer it's most commonly described as a pattern used for decoupling components and layers in the system. 

For example, say your application has a text editor component and you want to provide spell checking. Your standard code would look something like this:
```js
public class TextEditor {

    private SpellChecker checker;

    public TextEditor() {
        this.checker = new SpellChecker();
    }
}
```
What we've done here creates a dependency between the TextEditor and the SpellChecker. In an IoC scenario we would instead do something like this:
```js
public class TextEditor {

    private IocSpellChecker checker;

    public TextEditor(IocSpellChecker checker) {
        this.checker = checker;
    }
}
```

You have *inverted control* by handing the responsibility of instantiating the spell checker from the TextEditor class to the caller.

```js
SpellChecker sc = new SpellChecker; // dependency
TextEditor textEditor = new TextEditor(sc);
```



#### Can we create a clone of a singleton object? 
Yesl, we can but the purpose of Singleton Object creation is to have single instance serving all requests. 


#### Name types of Design Patterns? 
Design patterns can be classified in three categories: Creational, Structural and Behavioral patterns.

-   Creational Patterns - These design patterns provide a way to create objects while hiding the creation logic, rather than instantiating objects directly using new opreator. This gives program more flexibility in deciding which objects need to be created for a given use case.

-   Structural Patterns - These design patterns concern class and object composition. Concept of inheritance is used to compose interfaces and define ways to compose objects to obtain new functionalities.

-   Behavioral Patterns - These design patterns are specifically concerned with communication between objects.


#### What is Template pattern? 
In **Template pattern**, an abstract class exposes defined way(s)/template(s) to execute its methods. Its subclasses can override the method implementation as per need but the invocation is to be in the same way as defined by an abstract class. This pattern comes under _behavior_ pattern category.

<div class="text-center">
<img src="https://upload.wikimedia.org/wikipedia/commons/2/2a/W3sDesign_Template_Method_Design_Pattern_UML.jpg" class="img-fluid"/>
</div>


#### What is Filter pattern? 
**Filter pattern** or **Criteria pattern** is a design pattern that enables developers to filter a set of objects using different criteria and chaining them in a decoupled way through logical operations. This type of design pattern comes under *structural* pattern as this pattern combines multiple criteria to obtain single criteria.

**Filter design pattern** is useful where you want to add filters dynamically or you are implementing multiple functionalities and most of them require different filter criteria to filter something. In that case instead of hard coding the filters inside the functionalities, you can create filter criteria and re-use it wherever required.

```js
List<Laptop> laptops = LaptopFactory.manufactureInBulk();
AndCriteria searchCriteria = new AndCriteria(
  new HardDisk250GBFilter(), 
  new MacintoshFilter(), 
  new I5ProcessorFilter());
List<Laptop> filteredLaptops = searchCriteria.meets(laptops);
```


#### What is Strategy pattern? 
In **Strategy pattern**, a class behavior or its algorithm can be changed at run time. This type of design pattern comes under _behavior_ pattern.

In Strategy pattern, we create objects which represent various strategies and a context object whose behavior varies as per its strategy object. The strategy object changes the executing algorithm of the context object.

<div class="text-center">
<img src="https://upload.wikimedia.org/wikipedia/commons/4/45/W3sDesign_Strategy_Design_Pattern_UML.jpg" class="img-fluid"/>
</div>




#### What is Dependency Injection? 
*Dependency injection* makes it easy to create loosely coupled components, which typically means that components consume functionality defined by interfaces without having any first-hand knowledge of which implementation classes are being used.

*Dependency injection* makes it easier to change the behavior of an application by changing the components that implement the interfaces that define application features. It also results in components that are easier to isolate for unit testing.


#### What is Null Object pattern? 
In **Null Object pattern**, a null object replaces check of NULL object instance. Instead of putting if check for a null value, Null Object reflects a do nothing relationship. Such Null object can also be used to provide default behaviour in case data is not available.

In Null Object pattern, we create an abstract class specifying various operations to be done, concrete classes extending this class and a null object class providing do nothing implementation of this class and will be used seamlessly where we need to check null value.

<div class="text-center">
<img src="https://www.tutorialspoint.com/design_pattern/images/null_pattern_uml_diagram.jpg" class="img-fluid"/>
</div>



#### What is State pattern? 
In **State pattern** a class behavior changes based on its state. This type of design pattern comes under _behavior_ pattern. In State pattern, we create objects which represent various states and a context object whose behavior varies as its state object changes.

<div class="text-center">
<img src="https://upload.wikimedia.org/wikipedia/commons/e/ec/W3sDesign_State_Design_Pattern_UML.jpg" class="img-fluid"/>
</div>


#### What is Proxy pattern? 
In **proxy pattern**, a class represents functionality of another class. This type of design pattern comes under _structural_ pattern.

In proxy pattern, we create object having original object to interface its functionality to outer world.

<div class="text-center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Proxy_pattern_diagram.svg/439px-Proxy_pattern_diagram.svg.png" class="img-fluid"/>
</div>


#### What is Builder pattern? 
*Builder pattern* builds a complex object using simple objects and using a step by step approach. This builder is independent of other objects.


<div class="text-center"/>
<img src="https://www.plantuml.com/plantuml/svg/TOux3i8m343tdC9ZE_G234YqIAo86mJ7WqMQLeupS7kSqY90iCJsU_4dtpZDNlm8MU-Hx1L6BMDqHfMHPvyK_12PQio0d-B8GgYJL1M-UgQ4GafzuHXe-O5NvunvfPeYTDtU4jZ14sukh2gy6LXhcset5jIcTG6s_cN7sROVcXP-yVuF7oh75p-HNYYNQDCV" class="img-fluid" style="max-width: 500px" />
</div>

*The Director* class is optional and is used to make sure that the building steps are executed in the *right order* with the right data by the right builder. It's about validation and delegation.

Builder/Director pattern's steps invocations could be semantically presented by *method chaining* or so called *Fluent Interface* syntax. 

```js
Pizza pizza = new Pizza.Builder()
                       .cheese(true)
                       .pepperoni(true)
                       .bacon(true)
                       .build();
```


## [[⬆]](#toc) <a name=DevOps>DevOps</a> Interview Questions
#### Explain what is DevOps ? 
**DevOps** is a newly emerging term in IT field, which is nothing but a practice that emphasizes the collaboration and communication of both software developers and other information-technology (IT) professionals. It focuses on delivering software product faster and lowering the failure rate of releases.


#### What is the most important thing DevOps helps us achieve? 
The most important thing that DevOps helps us achieve is to get the changes into production as quickly as possible while minimising risks in software quality assurance and compliance. This is the primary objective of DevOps.


#### What is meant by Continuous Integration? 
*Continuous Integration (CI)* is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early. 


#### What is the need for DevOps? 
Nowadays instead of releasing big sets of features, companies are trying to see if small features can be transported to their customers through a series of release trains. This has many advantages like quick feedback from customers, better quality of software etc. which in turn leads to high customer satisfaction. To achieve this, companies are required to:

1.  Increase deployment frequency
2.  Lower failure rate of new releases
3.  Shortened lead time between fixes
4.  Faster mean time to recovery in the event of new release crashing

DevOps fulfills all these requirements and helps in achieving seamless software delivery. 


#### Are you more Dev or Ops? 
What the interview means is do you do more sysadmin work, or do you spend a lot of time working with developers on coding?


#### What is post mortem meetings? 
*Post mortem meeting* is a meeting where we discuss what went wrong and what steps should be taken so that failure doesn't happen again. Post mortem meetings are not about finding the one to be blamed, they are for preventing outages from reoccurring and planing redesign of the infrastructure so that downtime can be minimised. It is about learning from mistakes.


#### How is DevOps different from Agile/SDLC? 
* Agile software development methodology focuses on the development of software.
* DevOps on the other hand is responsible for development as well as deployment of the software in the safest and most reliable way possible.



#### What are the success factors for Continuous Integration? 
*   Maintain a code repository
*   Automate the build
*   Make the build self-testing
*   Everyone commits to the baseline every day
*   Every commit (to baseline) should be built
*   Keep the build fast
*   Test in a clone of the production environment
*   Make it easy to get the latest deliverables
*   Everyone can see the results of the latest build
*   Automate deployment

#### Why is Continuous monitoring necessary? 
*Continuous Monitoring* allows timely identification of problems or weaknesses and quick corrective action that helps reduce expenses of an organization. Continuous monitoring provides solution that addresses three operational disciplines known as:

* continuous audit
* continuous controls monitoring
* continuous transaction inspection


#### Which are the top DevOps tools? Which tools have you worked on? 
The most popular DevOps tools are:

*   **Git**: Version Control System tool
*   **Jenkins**: Continuous Integration tool
*   **Selenium**: Continuous Testing tool
*   **Puppet, Chef, Ansible**: Configuration Management and Deployment tools
*   **Nagios**: Continuous Monitoring tool
*   **Docker**: Containerization tool


#### Mention what are the key aspects or principle behind DevOps? 
The key aspects or principle behind DevOps are:

* Infrastructure as code
* Continuous deployment
* Automation
* Monitoring
* Security

#### Can we consider DevOps as an Agile methodology? 
*DevOps* is a movement to reconcile and synchronize development and production start through a set of good practices . Its emergence is motivated by a deep changing demands of business, who want to speed up the changes to stick closer to the requirements of business and the customer.


#### What is DevOps engineer's duty with regards to Agile development? 
DevOps engineer work very closely with Agile development teams to ensure they have an environment necessary to support functions such as automated testing, continuous Integration and continuous Delivery. DevOps engineer must be in constant contact with the developers and make all required parts of environment work seamlessly.


#### What does Containerization mean? 
*Containerisation* is a type of *virtualization* strategy that emerged as an alternative to traditional hypervisor-based virtualization. 

In containerization, the operating system is shared by the different containers rather than cloned for each virtual machine. For example Docker provides a container virtualization platform that serves as a good alternative to hypervisor-based arrangements.


#### What is the function of CI (Continuous Integration) server? 
CI server function is to continuously integrate all changes being made and committed to repository by different developers and check for compile errors. It needs to build code several times a day, preferably after every commit so it can detect which commit made the breakage if the breakage happens.


#### What are the advantages of DevOps? 
Technical benefits:

*   Continuous software delivery
*   Less complex problems to fix
*   Faster resolution of problems

Business benefits:

*   Faster delivery of features
*   More stable operating environments
*   More time available to add value (rather than fix/maintain)


#### What is the role of a configuration management tool in DevOps? 
*Configuration Management* tools' purpose is to automatize deployment and configuration of software on big number of servers. Most CM tools usually use agent architecture which means that every machine being manged needs to have agent installed. 

One tool that uses agentless architecture is Ansible. It only requires SSH and Python. And if raw module is being used, not even Python is required because it can run raw bash commands. Other available and popular CM tools are Puppet, Chef, SaltStack.


## [[⬆]](#toc) <a name=Docker>Docker</a> Interview Questions
#### What is Docker? 
* Docker is a containerization platform which packages your application and all its dependencies together in the form of containers so as to ensure that your application works seamlessly in any environment be it development or test or production.
* Docker containers, wrap a piece of software in a complete filesystem that contains everything needed to run: code, runtime, system tools, system libraries etc. anything that can be installed on a server.
* This guarantees that the software will always run the same, regardless of its environment.


#### What is Build Cache in Docker? 
When we build an Image, Docker will process each line in Dockerfile. It will execute the commands on each line in the order that is mentioned in the file. But at each line, before running any command, Docker will check if there is already an existing image in its cache that can be reused rather than creating a new image.


#### What’s the difference between a repository and a registry? 
* **Docker registry** is a service for hosting and distributing images (the default one is the Docker Hub). 
* **Docker repository** is a collection of related Docker images (the same name but with different tags).


#### What is the difference between ‘docker run’ and ‘docker create’? 
The primary difference is that using **‘docker create’** creates a container in a stopped state.

**Bonus point:** You can use **‘docker create’** and store an outputed container ID for later use. The best way to do it is to use **‘docker run’** with -**\-cidfile FILE\_NAME** as running it again won’t allow to overwrite the file. A good practice is to keep well ogranised directory structure: /containers/web/server1/ws.cid containers/web/server3/ws.cid


#### Can you remove (‘docker rm’) a container that is paused? 
No, to remove a container it must be stopped first.


#### When would you use ‘docker kill’ or ‘docker rm -f’? 
If you must stop the container really quickly… (someone pushed something to production on Friday evening?… ;) )


####  How to link containers? 
The simplest way is to use network port mapping. There’s also the **\- -link** flag which is deprecated.


#### What is the difference between a Docker image and a container? 
An instance of an image is called a container. You have an image, which is a set of layers. If you start this image, you have a running container of this image. You can have many running containers of the same image.

You can see all your images with `docker images` whereas you can see your running containers with `docker ps` (and you can see all containers with `docker ps -a`).

So a running instance of an image is a container.


#### What type of applications - Stateless or Stateful are more suitable for Docker Container? 
It is preferable to create Stateless application for Docker Container. We can create a container out of our application and take out the configurable state parameters from application. Now we can run same container in Production as well as QA environments with different parameters. This helps in reusing the same Image in different scenarios. Also a stateless application is much easier to scale with Docker Containers than a stateful application.


#### What are the most common instructions in Dockerfile? 

Some of the common instructions in Dockerfile are as follows:
*   **FROM**: We use FROM to set the base image for subsequent instructions. In every valid Dockerfile, FROM is the first instruction.
*   **LABEL**: We use LABEL to organize our images as per project, module, licensing etc. We can also use LABEL to help in automation.  
    In LABEL we specify a key value pair that can be later used for programmatically handling the Dockerfile.
*   **RUN**: We use RUN command to execute any instructions in a new layer on top of the current image. With each RUN command we add something on top of the image and use it in subsequent steps in Dockerfile.
*   **CMD**: We use CMD command to provide default values of an executing container. In a Dockerfile, if we include multiple CMD commands, then only the last instruction is used.


#### How to build envrionment-agnostic systems with Docker? 
There are three main features helping to achieve that:

*   Volumes
*   Environment variable injection
*   Read-only file systems


#### What is the difference between the `COPY` and `ADD` commands in a Dockerfile? 
Although `ADD` and `COPY` are functionally similar, generally speaking, `COPY` is preferred. 

That’s because it’s more transparent than ADD. COPY only supports the basic copying of local files into the container, while ADD has some features (like local-only tar extraction and remote URL support) that are not immediately obvious. Consequently, the best use for ADD is local tar file auto-extraction into the image, as in ADD rootfs.tar.xz /.


#### What is the difference between CMD and ENTRYPOINT in a Dockerfile? 
Both `CMD` and `ENTRYPOINT` instructions define what command gets executed when running a container. There are few rules that describe their co-operation.
 
1. Dockerfile should specify at least one of `CMD` or `ENTRYPOINT` commands.
2. `ENTRYPOINT` should be defined when using the container as an executable.
3. `CMD` should be used as a way of defining default arguments for an `ENTRYPOINT` command or for executing an ad-hoc command in a container.
4. `CMD` will be overridden when running the container with alternative argumen


#### How do I transfer a Docker image from one machine to another one without using a repository, no matter private or public? 
You will need to save the Docker image as a tar file:

```sh
docker save - o <path for generated tar file> <image name>
```

Then copy your image to a new system with regular file transfer tools such as `cp` or `scp`. After that you will have to load the image into Docker:

```sh
docker load -i <path to image tar file>
```


#### Is there a way to identify the status of a Docker container? 
We can identify the status of a Docker container by running the command 

```sh
docker ps –a
```

which will in turn list down all the available docker containers with its corresponding statuses on the host. From there we can easily identify the container of interest to check its status correspondingly.


#### What is Docker image? 
**Docker image** is the source of Docker container. In other words, Docker images are used to create containers. Images are created with the build command, and they’ll produce a container when started with run. Images are stored in a Docker registry such as ` registry.hub.docker.com` because they can become quite large, images are designed to be composed of layers of other images, allowing a minimal amount of data to be sent when transferring images over the network.


#### What is Docker container? 
**Docker containers** include the application and all of its dependencies, but share the kernel with other containers, running as isolated processes in user space on the host operating system. Docker containers are not tied to any specific infrastructure: they run on any computer, on any infrastructure, and in any cloud.


#### What is Docker hub? 
**Docker hub** is a cloud-based registry service which allows you to link to code repositories, build your images and test them, stores manually pushed images, and links to Docker cloud so you can deploy images to your hosts. It provides a centralized resource for container image discovery, distribution and change management, user and team collaboration, and workflow automation throughout the development pipeline.


#### Do I lose my data when the Docker container exits? 
There is no loss of data when any of your Docker containers exits as any of the data that your application writes to the disk in order to preserve it. This will be done until the container is explicitly deleted. The file system for the Docker container persists even after the Docker container is halted.


#### What are the various states that a Docker container can be in at any given point in time? 
There are four states that a Docker container can be in, at any given point in time. Those states are as given as follows:

* Running
* Paused
* Restarting
* Exited


## [[⬆]](#toc) <a name=EntityFramework>Entity Framework</a> Interview Questions
#### Explain what is ADO.NET entity framework? 
**ADO.NET Entity Framework** is an ORM (Object Relational Mapping) framework developed by Microsoft. It is an extension of ADO.NET that provides an automated mechanism to access and store data in the database. With the help of ADO.NET, database can be accessed without much required programming or code.


#### What are the benefits of using EF? 
The main and the only benefit of EF is it auto-generates code for the Model (middle layer), Data Access Layer, and mapping code, thus reducing a lot of development time.


#### What is Entity Framework? 
ADO.NET EF is an ORM (object-relational mapping) which creates a higher abstract object model over ADO.NET components. So rather than getting into dataset, datatables, command, and connection objects as shown in the below code, you work on higher level domain objects like customers, suppliers, etc.


#### What are scalar and navigation properties in Entity Framework? 
* _Scalar properties_ are those where actual values are contained in the entities. Normally a scalar property will map to a database field.
* _Navigation properties_ help to navigate from one entity to another entity directly in the code.


#### What are the different ways of creating these domain / entity objects? 
Entity objects can be created in two ways: from a database structure, or by starting from scratch by creating a model.


#### What is pluralize and singularize in the Entity Framework? 
“Pluralize” and “Singularize” give meaningful naming conventions to objects. In simple words it says do you want to represent your objects with the below naming convention:

*   One Customer record means “Customer” (singular).
*   Lot of customer records means “Customer’s” (plural, watch the “s”)


#### What is migration in Entity Framework? 
Entity Framework introduced a migration tool that automatically updates the database schema when your model changes without losing any existing data or other database objects.

There are two kinds of Migration:

* Automated Migration
* Code-based Migration


#### What is Code First approach in Entity Framework? 
In **Code First** approach we avoid working with the Visual Designer of Entity Framework. In other words the EDMX file is excluded from the solution. So you now have complete control over the context class as well as the entity classes.


#### How can we read records using Entity Framework classes? 
In order to browse through records you can create the object of the context class and inside the context class you will get the records.

For instance, in the below code snippet we are looping through a customer object collection. This customer collection is the output given by the context class `CustomermytextEntities`.

```csharp
CustomermytestEntities obj = new CustomermytestEntities();
foreach (Customer objCust in obj.Customers)
{}
```


#### What is the purpose of a DBContext class? 
You can think of `DbContext` as the database connection and a set of tables, and `DbSet` as a representation of the tables themselves. The `DbContext` allows you to link your model properties (presumably using the Entity Framework) to your database with a connection string. 

Later, when you wish to refer to a database in your controller to handle data, you reference the `DbContext`.


#### What is Mapping? 
The Mapping will have the information on how the Conceptual Models are mapped to Storage Models.


#### What is Conceptual Model? 
**Conceptual Models** are the model classes which contain the relationships. These are independent of the database design.


#### What is Storage Model? 
**Storage Models** are our database design models, which contains database tables, views, stored procs and keys with relationships.


#### Mention in what all scenarios Entity Framework can be applicable? 
Entity Framework can be applicable in three scenarios

* If you have an existing database already or you want to build your database first than other parts of the application
* If your prime focus is your domain classes and then create the database from your domain classes
* If you want to design your database schema on the visual designer and create the classes and database


#### Mention what is Code First approach and Model First Approach in Entity Framework? 
In Entity Framework,

*   **Model First Approach:** In this approach we create entities, relationships directly on the design surface of EDMX.
*   **Code Approach:** For code approach we avoid working with the visual designer or entity framework.


## [[⬆]](#toc) <a name=Flutter>Flutter</a> Interview Questions
#### When to use main Axis Alignment and cross Axis Alignment? 
**For Row:**  
`mainAxisAlignment` = Horizontal Axis   
`crossAxisAlignment` = Vertical Axis

![enter image description here](https://i.stack.imgur.com/aypHr.png)

**For Column:**
  
`mainAxisAlignment` = Vertical Axis      
`crossAxisAlignment` = Horizontal Axis

![enter image description here](https://i.stack.imgur.com/eseWF.png)


[Image source](https://flutter.dev/docs/development/ui/layout#aligning-widgets)


#### What is Flutter? 
**Flutter** is an open-source UI toolkit from *Google* for crafting beautiful, natively compiled applications for desktop, web, and mobile from a single codebase. Flutter apps are built using the *Dart* programming language.



#### What is the pubspec.yaml file and what does it do? 
- The `pubspec.yaml` file allows you to define the packages your app relies on, declare your assets like images, audio, video, etc. 
- It allows you to set constraints for your app. 
- For Android developers, this is roughly similar to a `build.gradle` file.


#### When should you use WidgetsBindingObserver? 
WidgetsBindingObserver should be used when we want to listen to the `AppLifecycleState` and call stop/start on our services.


#### What is the difference between "main()" and "runApp()" functions in Flutter? 
- `main ()` function came from *Java*-like languages so it's where all program started, without it, you can't write any program on Flutter even without UI.
- `runApp()` function should return *Widget* that would be attached to the screen as a root of the *Widget Tree* that will be rendered.


#### What is the difference between Expanded and Flexible widgets? 
`Expanded` is just a shorthand for `Flexible`

Using expanded this way:
```dart
Expanded(
	child: Foo(),
);
```
is strictly equivalent to:
```dart
Flexible(
	fit: FlexFit.tight,
	child: Foo(),
);
```

You may want to use `Flexible` over `Expanded` when you want a different `fit`, useful in some responsive layouts.

The difference between `FlexFit.tight` and `FlexFit.loose` is that loose will allow its child to have a maximum size while tight forces that child to fill all the available space.


#### How is Flutter different from a WebView based application? 
- Code you write for a **WebView** or an app that runs similarly has to go through multiple layers to finally get executed (like Cordova for Ionic).** In essence, Flutter leapfrogs that by **compiling down to native **ARM** code to execute on both platforms. 
- “Hybrid” apps are slow, sluggish and look different from the platform they run on. *Flutter* apps run much, much faster than their hybrid counterparts. 
- It’s much easier to access native components and sensors using plugins rather than using **WebView** which can’t take full use of their platform.


#### What is the pubspec.yaml file and what does it do? 
The `Pubspec.yaml` allows you to define the packages your app relies on, declare your assets like images, audio, video, etc. It also allows you to set constraints for your app. For Android developers, this is roughly similar to a `build.gradle` file, but the differences between the two are also evident.


#### What is a "widget" and mention its importance in Flutter? 
- Widgets are basically the UI components in Flutter.
- It is a way to describe the configuration of an *Element*.
- They are inspired from components in **React**.

Widgets are important in Flutter because everything within a Flutter application is a  **Widget**  , from a simple “_Text”_  to “_Buttons”_  to “_Screen Layouts”_.


#### What is Dart and why does Flutter use it? 
**Dart** is an *object-oriented*, *garbage-collected* programming language that you use to develop Flutter apps.
It was also created by Google, but is open-source, and has community inside and outside Google.
Dart was chosen as the language of **Flutter** for the following reason: 
- Dart is **AOT** (Ahead Of Time) compiled to fast, predictable, native code, which allows almost all of Flutter to be written in Dart. This not only makes Flutter fast, virtually everything (including all the widgets) can be customized.
- Dart can also be **JIT** (Just In Time) compiled for exceptionally fast development cycles and game-changing workflow (including Flutter’s popular sub-second stateful hot reload).
- Dart allows Flutter to avoid the need for a separate declarative layout language like *JSX* or *XML*, or separate visual interface builders, because Dart’s declarative, programmatic layout is easy to read and visualize. And with all the layout in one language and in one place, it is easy for Flutter to provide advanced tooling that makes layout a snap.


#### What is an App state?  
- State that is not *ephemeral*, that you want to share across many parts of your app, and that you want to keep between user sessions, is what we call **application state** (sometimes also called *shared state*).
- Examples of application state:
	-   User preferences
	-   Login info
	-   Notifications in a social networking app
	-   The shopping cart in an e-commerce app
	-   Read/unread state of articles in a news app


#### How many types of widgets are there in Flutter? 
There are two types of widgets:
1.  **StatelessWidget** : A widget that does not require mutable state.
2.  **StatefulWidget**: A widget that has mutable state.


#### What are the different build modes in Flutter? 
- The Flutter tooling supports three modes when compiling your app, and a headless mode for testing. 
- You choose a compilation mode depending on where you are in the development cycle.
- The modes are:
	- Debug
	- Profile
	- Release


#### What is Fat Arrow Notation in Dart and when do you use it? 
The fat arrow syntax is simply a short hand for returning an expression and is similar to `(){ return expression; }`.

The fat arrow is for returning a single line, braces are for returning a code block.

Only an expression—not a statement—can appear between the arrow (`=>`) and the semicolon (`;`). For example, you can’t put an *if* statement there, but you can use a *conditional* expression
```dart
// Normal function
void function1(int a) {
  if (a == 3) {
    print('arg was 3');
  } else {
    print('arg was not 3');
  }
}

// Arrow Function
void function2(int a) => print('arg was ${a == 3 ? '' : 'not '}3');
```



#### Does Flutter work like a browser? How is it different from a WebView based application? 
To answer this question simply: **Code you write for a WebView or an app that runs similarly has to go through multiple layers to finally get executed.** In essence, Flutter leapfrogs that by **compiling down to native ARM** code to execute on both platforms. “Hybrid” apps are slow, sluggish and look different from the platform they run on. Flutter apps run much, much faster than their hybrid counterparts. Also, it’s much easier to access native components and sensors using plugins rather than using WebViews which can’t take full use of their platform.


## [[⬆]](#toc) <a name=Git>Git</a> Interview Questions
#### What is the command to write a commit message in Git? 
Use:
```sh
git commit -a
```

 -a on the command line instructs git to commit the new content of all tracked files that have been modified. You can use 
```sh
git add <file>
```
or 
```sh
git add -A
```

before git commit -a if new files need to be committed for the first time.



#### What is difference between Git vs SVN? 
The main point in Git vs SVN debate boils down to this: Git is a distributed version control system (DVCS), whereas SVN is a centralized version control system.


#### What is Git? 
Git is a Distributed Version Control system (DVCS). It can track changes to a file and allows you to revert back to any particular change.

Its distributed architecture provides many advantages over other Version Control Systems (VCS) like SVN one major advantage is that it does not rely on a central server to store all the versions of a project’s files. 


#### What's the difference between a "pull request" and a "branch"? 
* A **branch** is just a separate version of the code.

* A **pull request** is when someone take the repository, makes their own branch, does some changes, then tries to merge that branch in (put their changes in the other person's code repository).


#### What is Git fork? What is difference between fork, branch and clone? 
* A **fork** is a remote, server-side copy of a repository, distinct from the original. A fork isn't a Git concept really, it's more a political/social idea. 
* A **clone** is not a fork; a clone is a local copy of some remote repository.  When you clone, you are actually copying the entire source repository, including all the history and branches.
* A **branch** is a mechanism to handle the changes within a single repository in order to eventually merge them with the rest of code. A branch is something that is within a repository. Conceptually, it represents a thread of development.


#### What is the difference between "git pull" and "git fetch"? 
In the simplest terms, `git pull` does a `git fetch` followed by a `git merge`.

* When you use `pull`, Git tries to automatically do your work for you. **It is context sensitive**, so Git will merge any pulled commits into the branch you are currently working in.  `pull` **automatically merges the commits without letting you review them first**. If you don’t closely manage your branches, you may run into frequent conflicts.

* When you `fetch`, Git gathers any commits from the target branch that do not exist in your current branch and **stores them in your local repository**. However, **it does not merge them with your current branch**. This is particularly useful if you need to keep your repository up to date, but are working on something that might break if you update your files. To integrate the commits into your master branch, you use `merge`.


#### How does the Centralized Workflow work? 
The **Centralized Workflow** uses a central repository to serve as the single point-of-entry for all changes to the project. The default development branch is called master and all changes are committed into this branch.

Developers start by cloning the central repository. In their own local copies of the project, they edit files and commit changes. These new commits are stored locally.

To publish changes to the official project, developers *push* their local master branch to the central repository. Before the developer can publish their feature, they need to *fetch* the updated central commits and rebase their changes on top of them. 

Compared to other workflows, the Centralized Workflow has no defined pull request or forking patterns. 


#### You need to update your local repos. What git commands will you use? 
It’s a two steps process. First you fetch the changes from a remote named origin:

```sh
git fetch origin
```
Then you merge a branch master to local:

```sh
git merge origin/master
```
Or simply:

```sh
git pull origin master
```
If origin is a default remote and ‘master’ is default branch, you can drop it eg. `git pull`.


#### How to undo the most recent commits in Git? 
**Details:**
You accidentally committed wrong files to Git, but haven't pushed the commit to the server yet.
How can you undo those commits from the local repository?

```sh
$ git commit -m "Something terribly misguided"      
$ git reset HEAD~                                   # copied the old head to .git/ORIG_HEAD
<< edit files as necessary >>                       
$ git add ...                                       
$ git commit -c ORIG_HEAD                           # will open an editor, which initially contains the log message from the old commit and allows you to edit it
```


## [[⬆]](#toc) <a name=Golang>Golang</a> Interview Questions
#### What is Go? 
**Go** is a general-purpose language designed with systems programming in mind. It was initially developed at Google in year 2007 by Robert Griesemer, Rob Pike, and Ken Thompson. It is strongly and statically typed, provides inbuilt support for garbage collection and supports concurrent programming. Programs are constructed using packages, for efficient management of dependencies. Go programming implementations use a traditional compile and link model to generate executable binaries.


#### Is Go a new language, framework or library? 
**Go** isn't a library and not a framework, it's a new language. 

Go is mostly in the C family (basic syntax), with significant input from the Pascal/Modula/Oberon family (declarations, packages). Go does have an extensive library, called the runtime, that is part of every Go program. Although it is more central to the language, Go's runtime is analogous to libc, the C library. It is important to understand, however, that Go's runtime does not include a virtual machine, such as is provided by the Java runtime. Go programs are compiled ahead of time to native machine code.


#### Can you declared multiple types of variables in single declaration in Go? 
Yes. Variables of different types can be declared in one go using type inference.

```go
var a, b, c =  3,  4,  "foo"  
```


#### What is a pointer? 
A **pointer variable** can hold the *address* of a variable.

Consider:
```go
var x =  5  var p *int p =  &x
fmt.Printf("x = %d",  *p)
```

Here `x` can be accessed by `*p`.


#### Can you return multiple values from a function? 
A Go function can return multiple values.

Consider:
```go
package main
import "fmt"

func swap(x, y string) (string, string) {
   return y, x
}
func main() {
   a, b := swap("Mahesh", "Kumar")
   fmt.Println(a, b)
}
```


#### What are some advantages of using Go? 
**Go** is an attempt to introduce a new, concurrent, garbage-collected language with fast compilation and the following benefits: 
* It is possible to compile a large Go program in a few seconds on a single computer.
* Go provides a model for software construction that makes dependency analysis easy and avoids much of the overhead of C-style include files and libraries.
* Go's type system has no hierarchy, so no time is spent defining the relationships between types. Also, although Go has static types, the language attempts to make types feel lighter weight than in typical OO languages.
* Go is fully garbage-collected and provides fundamental support for concurrent execution and communication.
* By its design, Go proposes an approach for the construction of system software on multicore machines.


#### Why the Go language was created? 
**Go** was born out of frustration with existing languages and environments for systems programming. 

Go is an attempt to have:
* an interpreted, dynamically typed language with 
* the efficiency and safety of a statically typed, compiled language
* support for networked and multicore computing
* be fast in compilation

To meet these goals required addressing a number of linguistic issues: an expressive but lightweight type system; concurrency and garbage collection; rigid dependency specification; and so on. These cannot be addressed well by libraries or tools so a new language was born.



#### Explain this code 
**Details:**
In Go there are various ways to return a struct value or slice thereof. Could you explain the difference?

```go
type MyStruct struct {
    Val int
}

func myfunc() MyStruct {
    return MyStruct{Val: 1}
}

func myfunc() *MyStruct {
    return &MyStruct{}
}

func myfunc(s *MyStruct) {
    s.Val = 1
}
```

Shortly: 
* the first returns a copy of the struct, 
* the second a pointer to the struct value created within the function, 
* the third expects an existing struct to be passed in and overrides the value.


#### What is dynamic type declaration of a variable in Go? 
A *dynamic type variable declaration* requires compiler to interpret the type of variable based on value passed to it. Compiler don't need a variable to have type statically as a necessary requirement.


#### What are Goroutines? 
**Goroutines** are functions or methods that run concurrently with other functions or methods. Goroutines can be thought of as light weight threads. The cost of creating a Goroutine is tiny when compared to a thread. Its common for Go applications to have thousands of Goroutines running concurrently.


#### Let's talk variable declaration in Go. Could you explain what is a variable "zero value"? 
Variable is the name given to a memory location to store a value of a specific type. There are various syntaxes to declare variables in go.

```go
// 1 - variable declaration, then assignment
var age int
age = 29

// 2 - variable declaration with initial value
var age2 int = 29

// 3 - Type inference
var age3 = 29

// 4 - declaring multiple variables
var width, height int = 100, 50

// 5 - declare variables belonging to different types in a single statement
var (  
      name1 = initialvalue1,
      name2 = initialvalue2
)
// 6 - short hand declaration
name, age4 := "naveen", 29 //short hand declaration
```

If a variable is not assigned any value, go automatically initialises it with the **zero value of the variable's type**. Go is strongly typed, so variables declared as belonging to one type cannot be assigned a value of another type.


#### What kind of type conversion is supported by Go? 
Go is very strict about **explicit typing**. There is no automatic type promotion or conversion. Explicit type conversion is required to assign a variable of one type to another. 

Consider:
```go
i := 55      //int
j := 67.8    //float64
sum := i + int(j) //j is converted to int
```


#### What is static type declaration of a variable in Go? 
*Static type variable declaration* provides assurance to the compiler that there is one variable existing with the given type and name so that compiler proceed for further compilation without needing complete detail about the variable. A variable declaration has its meaning at the time of compilation only, compiler needs actual variable declaration at the time of linking of the program.


#### How to efficiently concatenate strings in Go? 
**Details:**
In Go, a `string` is a primitive type, which means it is read-only, and every manipulation of it will create a new string.

So if I want to concatenate strings many times without knowing the length of the resulting string, what's the best way to do it?

Beginning with Go 1.10 there is a `strings.Builder`. A Builder is used to efficiently build a string using Write methods. It minimizes memory copying. The zero value is ready to use.

```go
package main

import (
    "strings"
    "fmt"
)

func main() {
    var str strings.Builder

    for i := 0; i < 1000; i++ {
        str.WriteString("a")
    }

    fmt.Println(str.String())
}
```


#### What are the benefits of using Go programming? 
Following are the benefits of using Go programming:

*   Support for environment adopting patterns similar to dynamic languages. For example type inference (`x := 0` is valid declaration of a variable `x` of type `int`).
*   Compilation time is fast.
*   In built concurrency support: light-weight processes (via goroutines), channels, select statement.
*   Conciseness, Simplicity, and Safety.
*   Support for Interfaces and Type embedding.
*   The go compiler supports static linking. All the go code can be statically linked into one big fat binary and it can be deployed in cloud servers easily without worrying about dependencies.


#### Does Go have exceptions? 
No, Go takes a different approach. For plain error handling, Go's **multi-value returns** make it easy to report an error without overloading the return value. Go code uses error values to indicate an abnormal state. 

Consider:
```go
func Open(name string) (file *File, err error)
```
```go
f, err := os.Open("filename.ext")
if err != nil {
    log.Fatal(err)
}
// do something with the open *File f
```


## [[⬆]](#toc) <a name=GraphQL>GraphQL</a> Interview Questions
#### Is GraphQL a Database Technology? 
No. GraphQL is often confused with being a database technology. This is a misconception, GraphQL is a _query language_ for APIs - not databases. In that sense it’s database agnostic and can be used with any kind of database or even no database at all.


#### What is GraphQL? 
GraphQL is a query language created by [Facebook](http://facebook.github.io/) in 2012 which provides a **common interface between the client and the server for data fetching and manipulations**.

The client asks for various data from the GraphQL server via queries. The response format is described in the query and defined by the client instead of the server: they are called **client‐specified queries**.  
The structure of the data is not hardcoded as in traditional REST APIs - this makes retrieving data from the server more efficient for the client.


#### Is GraphQL only for React / Javascript Developers? 
No. GraphQL is an API technology so it can be used in any context where an API is required.

On the _backend_, a GraphQL server can be implemented in any programming language that can be used to build a web server. Next to Javascript, there are popular reference implementations for Ruby, Python, Scala, Java, Clojure, Go and .NET.

Since a GraphQL API is usually operated over HTTP, any client that can speak HTTP is able to query data from a GraphQL server.

*Note*: GraphQL is actually transport layer agnostic, so you could choose other protocols than HTTP to implement your server.


#### What is an exclamation point in GraphQL? 
That means that the field is non-nullable. By default, all types in GraphQL are nullable. When non-null is applied to the type of a field, it means that if the server resolves that field to `null`, the response will _fail validation_.


#### How to do Error Handling? 
A successful GraphQL query is supposed to return a JSON object with a root field called `"data"`. If the request fails or partially fails (e.g. because the user requesting the data doesn’t have the right access permissions), a second root field called `"errors"` is added to the response:
```js
    {
      "data": { ... },
      "errors": [ ... ]
    }
```   


#### Where is GraphQL useful? 
GraphQL helps where your **client needs a flexible response** format to avoid extra queries and/or massive data transformation with the overhead of keeping them in sync.

Using a GraphQL server makes it very easy for a client side developer to change the response format without any change on the backend.

With GraphQL, you can describe the required data in a more natural way. It can speed up development, because in application structures like **top-down rendering** in React, the required data is more similar to your component structure.


#### What is difference between Mutation and Query? 
Technically any GraphQL _query_ could be implemented to cause a data write. But there is a convention that any operations that cause writes should be sent explicitly via a _mutation_.

Besides the difference in the semantic, there is one important technical difference:

Query fields can be executed in parallel by the GraphQL engine while Mutation top-level fields MUST execute serially according to the spec.


#### What is GraphQL schema? 
Every GraphQL server has two core parts that determine how it works: a schema and resolve functions.

The *schema* is a model of the data that can be fetched through the GraphQL server. It defines what queries clients are allowed to make, what types of data can be fetched from the server, and what the relationships between these types are. 

Consider:

```css
type Author {
  id: Int
  name: String
  posts: [Post]
}
type Post {
  id: Int
  title: String
  text: String
  author: Author
}
type Query {
  getAuthor(id: Int): Author
  getPostsByTitle(titleContains: String): [Post]
}
schema {
  query: Query
}
```


## [[⬆]](#toc) <a name=HTML5>HTML5</a> Interview Questions
#### What is an iframe and how it works? 
An **iframe** is an **HTML document** which can be embedded inside another HTML page.

**Example**:

```html
<iframe src="https://github.com" height="300px" width="300px"></iframe>
```


#### Explain meta tags in HTML 
- **Meta tags** always go inside **head tag** of the HTML page
- **Meta tags** is always passed as name/value pairs
- **Meta tags** are not displayed on the page but intended for the browser
- **Meta tags** can contain information about **character encoding**, **description**, **title** of the document etc,

**Example**:

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="description" content="I am a web page with description"> 
  <title>Home Page</title>
</head>
<body>
  
</body>
</html>
```



#### What is the purpose of the alt attribute on images? 
The `alt` attribute provides alternative information for an image if a user cannot view it. The `alt` attribute should be used to describe any images except those which only serve a decorative purposes, in which case it should be left empty.



#### Write a HTML table tag sequence that outputs the following 
Write a HTML table tag sequence that outputs the following:
```
50 pcs 100 500
10 pcs 5 50
```

```html
<table>
  <tr>
    <td>50 pcs</td>
    <td>100</td>
    <td>500</td>
  </tr>
  <tr>
    <td>10 pcs</td>
    <td>5</td>
    <td>50</td>
  </tr>
</table>
```


#### What were some of the key goals and motivations for the HTML5 specification? 
HTML5 was designed to replace HTML 4, XHTML, and the HTML DOM Level 2. The key goals and motivations behind the HTML5 specification were to:

* Deliver rich content (graphics, movies, etc.) without the need for additional plugins, such as Flash.
* Provide better semantic support for web page structure through new structural element tags.
* Provide a stricter parsing standard to simplify error handling, ensure more consistent cross-browser behaviour, and simplify compatibility with documents written to older standards.
* Provide better cross-platform support whether running on a PC, Tablet, or Smartphone.


#### hat's the difference between an "attribute" and a "property" in HTML? 
Attributes are defined on the HTML markup but properties are defined on the DOM. To illustrate the difference, imagine we have this text field in our HTML: `<input type="text" value="Hello">`.

```js
const input = document.querySelector('input');
console.log(input.getAttribute('value')); // Hello
console.log(input.value); // Hello
```

But after you change the value of the text field by adding "World!" to it, this becomes:

```js
console.log(input.getAttribute('value')); // Hello
console.log(input.value); // Hello World!
```


#### Briefly describe the correct usage of the following HTML5 semantic elements: <header>, <article>, <section>, <footer> 
* `<header>` is used to contain introductory and navigational information about a section of the page. This can include the section heading, the author’s name, time and date of publication, table of contents, or other navigational information.

* `<article>` is meant to house a self-contained composition that can logically be independently recreated outside of the page without losing it’s meaining. Individual blog posts or news stories are good examples.

* `<section>` is a flexible container for holding content that shares a common informational theme or purpose.

* `<footer>` is used to hold information that should appear at the end of a section of content and contain additional information about the section. Author’s name, copyright information, and related links are typical examples of such content.



#### How Can I Get Indexed Better by Search Engines? 
It is possible to get indexed better by placing the following two statements in the `<HEAD>` part of your documents:

```html
<META NAME="keywords" CONTENT="keyword keyword keyword keyword">
<META NAME="description" CONTENT="description of your site">
```
Both may contain up to 1022 characters. If a keyword is used more than 7 times, the keywords tag will be ignored altogether. Also, you cannot put markup (other than entities) in the description or keywords list.


#### What is Character Encoding? 
To display an HTML page correctly, a web browser must know which character set (character encoding) to use. This is specified in the <meta> tag:

**HTML4:**
```html
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
```

**HTML5:**
```html
<meta charset="UTF-8">
```



#### What is the difference between span and div? 
* `div` is a block element
* `span` is inline element 

For bonus points, you could point out that it’s illegal to place a block element inside an inline element, and that while `div` can have a `p` tag, and a `p` tag can have a `span`, it is not possible for `span` to have a `div` or `p` tag inside.


#### What is a self closing tag?  
In HTML5 it is not strictly necessary to close certain HTML tags. The tags that aren’t required to have specific closing tags are called “self closing” tags.

An example of a self closing tag is something like a line break (`<br />`) or the meta tag (`<meta>`). This means that the following are both acceptable:

```html
<meta charset="UTF-8">
...
<meta charset="UTF-8" />
```


#### How can you highlight text in HTML? 
If you are working with an HTML5 page, the `<mark>` tag can be a quick and easy way of highlighting or marking text on a page:

```html
<mark>highlighted text</mark>
```

To highlight text with just HTML code and support for all browsers, set the background-color style, as shown in the example below, using the <span> HTML tag.
```html
<span style="background-color: #FFFF00">Yellow text.</span>
```


## [[⬆]](#toc) <a name=Ionic>Ionic</a> Interview Questions
#### What is Ionic Framework? 
**Ionic Framework** is an open source UI toolkit for building performant, high-quality mobile and desktop apps using web technologies (HTML, CSS, and JavaScript). Ionic Framework is focused on the frontend user experience, or UI interaction of an app (controls, interactions, gestures, animations). Currently, Ionic Framework has official integrations with Angular and React, and support for Vue is in development.


#### How can you test Ionic applications? 
Ionic v.1 applications are built using AngularJS. Angular has a rich set of test libraries and frameworks such as Jasmine and Karma test runner. These frameworks can be used to write unit tests for Ionic applications. Also, `ionic-CLI` provides `live reload` feature so the application can be tested in the browser. For example, the `ionic serve` command can be used to load the application in any browser. Thus, we can use Chrome Developer Tools or Mozilla Firefox with Firebug to debug and inspect Ionic applications.


#### What is hybrid app development? 
**Hybrid apps** are developed using web technologies like HTML, CSS and Javascript, and then wrapped in a native application using platforms like Cordova. The apps are shown in its own embedded browser, like UIWebView in iOS and WebView in Android (not Safari or Chrome). This allows you to use any web-native framework for mobile app development.


#### Can we work with Ionic > 1 and AngularJS? 
Unfortunately, **no**. Ionic (1) at a very high-level is essentially just a wrapper & directive/component library for AngularJS (1). In that same regard, Ionic 2 is built in the same way, utilizing all the benefits of Angular 2+.

Ionic 2 breaks away from being tied to the DOM in the browser, by using angular 2 which is the reason for the massive change between ionic 1.x and ionic 2.x. ( Angular 2.x architecture is not tied down to the DOM unlike the Angular 1.x ).


#### How do you pass data from one view to another in Ionic applications? 
Ionic v.1 uses AngularJS and UI-router. It means you can use Angular services or UI-router’s state `resolve` to pass data from one view to another. Since Angular services are singletons, data stored in services can be accessed across other Angular controllers.

As mentioned, UI-router provides a `resolve` configuration. For example:
```js
$stateProvider
  .state('todos', {
    url: '/todos',
    controller: 'TodosCtrl',
    templateUrl: 'todos.html',
    resolve: {
      todos: function(TodosService) {
        return TodosService.getTodos()
      }
    }
  })
```

One advantage of `resolve` over stateful services is better testing: as `resolve` injects dependencies in the controller, it is easy to test them.

When using Ionic v.4 you have 3 options:
1. Using Query Params (bad)
2. Service and Resolve Function (legit)
3. Using Router Extras State (new since Angular 7.2)

```js
 openDetailsWithState() {
    let navigationExtras: NavigationExtras = {
      state: {
        user: this.user
      }
    };
    this.router.navigate(['details'], navigationExtras);
  }
```


## [[⬆]](#toc) <a name=JSON>JSON</a> Interview Questions
#### What is JSON and why would I use it? 
**JSON** (JavaScript Object Notation) is a lightweight format that is used for data interchanging. It is based on a subset of JavaScript language (the way objects are built in JavaScript). Some JavaScript is not JSON, and some JSON is not JavaScript.


#### What is the correct JSON content type? 
The MIME media type for JSON text is **application/json**. The default encoding is UTF-8. (Source: RFC 4627).


#### How should I parse a JSON string in JavaScript? 
The standard way to parse JSON in JavaScript is `JSON.parse()`

The JSON API was introduced with ES5 (2011) and has since been implemented in >99% of browsers by market share, and Node.js. Its usage is simple:

```js
const json = '{ "fruit": "pineapple", "fingers": 10 }';
const obj = JSON.parse(json);
console.log(obj.fruit, obj.fingers);
```


## [[⬆]](#toc) <a name=Java>Java</a> Interview Questions
#### What is JVM? Why is Java called the “Platform Independent Programming Language”?  
A Java virtual machine (JVM) is a process virtual machine that can execute Java bytecode. Each Java source file is compiled into a bytecode file, which is executed by the JVM. Java was designed to allow application programs to be built that could be run on any platform, without having to be rewritten or recompiled by the programmer for each separate platform. A Java virtual machine makes this possible, because it is aware of the specific instruction lengths and other particularities of the underlying hardware platform.


#### What is a Servlet? 
The servlet is a Java programming language class used to process client requests and generate dynamic web content. Servlets are mostly used to process or store data submitted by an HTML form, provide dynamic content and manage state information that does not exist in the stateless HTTP protocol.


#### What is the Difference between JDK and JRE?  
* **The Java Runtime Environment (JRE) **is basically the Java Virtual Machine (**JVM**) where your Java programs are being executed. It also includes browser plugins for applet execution. 

* **The Java Development Kit (JDK)** is the full featured Software Development Kit for Java, including the JRE, the compilers and tools (like JavaDoc, and Java Debugger), in order for a user to develop, compile and execute Java applications.


#### What is a JSP Page? 
A **Java Server Page (JSP)** is a text document that contains two types of text: 
* static data and 
* JSP elements. 

Static data can be expressed in any text-based format, such as HTML or XML. JSP is a technology that mixes static content with dynamically-generated content.


#### What is the difference between an Applet and a Java Application? 
* Applets are executed within a Java enabled browser, but a 
* Java application is a standalone Java program that can be executed outside of a browser. 

However, they both require the existence of a Java Virtual Machine (JVM). Furthermore, a Java application requires a main method with a specific signature, in order to start its execution. Java applets don’t need such a method to start their execution. Finally, Java applets typically use a restrictive security policy, while Java applications usually use more relaxed security policies.


#### What are the two types of Exceptions in Java? Which are the differences between them?  
Java has two types of exceptions: checked exceptions and unchecked exceptions. 

1. **Unchecked exceptions **do not need to be declared in a method or a constructor’s throws clause, if they can be thrown by the execution of the method or the constructor, and propagate outside the method or constructor boundary. 

2. On the other hand, **checked exceptions** must be declared in a method or a constructor’s throws clause.


#### How do I efficiently iterate over each entry in a Java Map? 
Consider:
```java
Map<String, String> map = ...
for (Map.Entry<String, String> entry : map.entrySet()) {
    System.out.println(entry.getKey() + "/" + entry.getValue());
}
```
In Java 8 you can do it clean and fast using the new lambdas features:
```java
final long[] i = {0};
map.forEach((k, v) -> i[0] += k + v);
```



#### Explain Serialization and Deserialization.  
Java provides a mechanism, called object serialization where an object can be represented as a sequence of bytes and includes the object’s data, as well as information about the object’s type, and the types of data stored in the object. Thus, serialization can be seen as a way of flattening objects, in order to be stored on disk, and later, read back and reconstituted. Deserialisation is the reverse process of converting an object from its flattened state to a live object.


#### What is the difference between an Interface and an Abstract class?  
Java provides and supports the creation both of **abstract** classes and **interfaces**. Both implementations share some common characteristics, but they differ in the following features:

* All methods in an interface are implicitly abstract. On the other hand, an abstract class may contain both abstract and non-abstract methods.
* A class may implement a number of Interfaces, but can extend only one abstract class.
* In order for a class to implement an interface, it must implement all its declared methods. However, a class may not implement all declared methods of an abstract class. Though, in this case, the sub-class must also be declared as abstract.
* Abstract classes can implement interfaces without even providing the implementation of interface methods.
* Variables declared in a Java interface is by default final. An abstract class may contain non-final variables.
* Members of a Java interface are public by default. A member of an abstract class can either be private, protected or public.
* An interface is absolutely abstract and cannot be instantiated. An abstract class also cannot be instantiated, but can be invoked if it contains a main method.


#### What are pass by reference and pass by value?  
* When an object is **passed by value**, this means that a copy of the object is passed. Thus, even if changes are made to that object, it doesn’t affect the original value. 
* When an object is **passed by reference**, this means that the actual object is not passed, rather a reference of the object is passed. Thus, any changes made by the external method, are also reflected in all places.


#### What is the difference between processes and threads? 
The main difference between them is that 
* a **Process** is a program which is executing some code and 
* a **Thread** is an independent path of execution in the process. 

A process can have more than one thread for doing independent task e.g. a thread for reading data from disk, a thread for processing that data and another thread for sending that data over the network.


#### What’s the difference between sendRedirect and forward methods? 
The sendRedirect method creates a new request, while the forward method just forwards a request to a new target. The previous request scope objects are not available after a redirect, because it results in a new request. On the other hand, the previous request scope objects are available after forwarding. FInally, in general, the sendRedirect method is considered to be slower compare to the forward method.


#### Explain the architechure of a Servlet. 
The core abstraction that must be implemented by all servlets is the javax.servlet.Servlet interface. Each servlet must implement it either directly or indirectly, either by extending javax.servlet.GenericServlet or javax.servlet.http.HTTPServlet. Finally, each servlet is able to serve multiple requests in parallel using multithreading.


#### What are JSP actions? 
JSP actions use constructs in XML syntax to control the behavior of the servlet engine. JSP actions are executed when a JSP page is requested. They can be dynamically inserted into a file, re-use JavaBeans components, forward the user to another page, or generate HTML for the Java plugin.Some of the available actions are listed below:

* jsp:include – includes a file, when the JSP page is requested.
* jsp:useBean – finds or instantiates a JavaBean.
* jsp:setProperty – sets the property of a JavaBean.
* jsp:getProperty – gets the property of a JavaBean.
* jsp:forward – forwards the requester to a new page.
* jsp:plugin – generates browser-specific code.



#### What are Expressions? 
A JSP expression is used to insert the value of a scripting language expression, converted into a string, into the data stream returned to the client, by the web server. Expressions are defined between <% = and %> tags.


#### What are Decalarations? 
Declarations are similar to variable declarations in Java. Declarations are used to declare variables for subsequent use in expressions or scriptlets. To add a declaration, you must use the sequences to enclose your declarations.


#### What does the “static” keyword mean? Can you override private or static method in Java? 
The `static` keyword denotes that a member variable or method can be accessed, _without requiring an instantiation of the class to which it belongs_. 

A user cannot override static methods in Java, because method overriding is based upon dynamic binding at runtime and static methods are statically binded at compile time. A static method is not associated with any instance of a class so the concept is not applicable.


#### What are the basic interfaces of Java Collections Framework?  
**Java Collections Framework** provides a well designed set of interfaces and classes that support operations on a collections of objects. The most basic interfaces that reside in the Java Collections Framework are:

* **Collection**, which represents a group of objects known as its elements.
* **Set**, which is a collection that cannot contain duplicate elements.
* **List**, which is an ordered collection and can contain duplicate elements.
* **Map**,  which is an object that maps keys to values and cannot contain duplicate keys.


#### What are Directives? 
What are the different types of Directives available in JSP ? Directives are instructions that are processed by the JSP engine, when the page is compiled to a servlet. Directives are used to set page-level instructions, insert data from external files, and specify custom tag libraries. Directives are defined between < %@ and % >.The different types of directives are shown below:

* Include directive: it is used to include a file and merges the content of the file with the current page.
* Page directive: it is used to define specific attributes in the JSP page, like error page and buffer.
* Taglib: it is used to declare a custom tag library which is used in the page.


#### What is an Iterator?  
The [Iterator](http://docs.oracle.com/javase/7/docs/api/java/util/Iterator.html) interface provides a number of methods that are able to iterate over any [Collection](http://docs.oracle.com/javase/7/docs/api/java/util/Collection.html). Each Java [Collection](http://docs.oracle.com/javase/7/docs/api/java/util/Collection.html) contains the [Iterator](http://docs.oracle.com/javase/7/docs/api/java/util/Iterator.html)  method that returns an [Iterator](http://docs.oracle.com/javase/7/docs/api/java/util/Iterator.html)  instance. Iterators are capable of removing elements from the underlying collection during the iteration.


#### How are the JSP requests handled? 
On the arrival of a JSP request, the browser first requests a page with a .jsp extension. Then, the Web server reads the request and using the JSP compiler, the Web server converts the JSP page into a servlet class. Notice that the JSP file is compiled only on the first request of the page, or if the JSP file has changed.The generated servlet class is invoked, in order to handle the browser’s request. Once the execution of the request is over, the servlet sends a response back to the client. See [how to get Request parameters in a JSP](http://examples.javacodegeeks.com/enterprise-java/jsp/get-request-parameter-in-jsp-page/).


#### What is Function Overriding and Overloading in Java? 
* Method **overloading** in Java occurs when two or more methods in the same class have the exact same name, but different parameters. 

```java
class Dog{
    public void bark(){
        System.out.println("woof ");
    }
 
    //overloading method
    public void bark(int num){
    	for(int i=0; i<num; i++)
    		System.out.println("woof ");
    }
}
```

* On the other hand, method **overriding** is defined as the case when a child class redefines the same method as a parent class. Overridden methods must have the same name, argument list, and return type. The overriding method may not limit the access of the method it overrides.

```java
class Dog{
    public void bark(){
        System.out.println("woof ");
    }
}
class Hound extends Dog{
    public void sniff(){
        System.out.println("sniff ");
    }
 
    public void bark(){
        System.out.println("bowl");
    }
}
 
public class OverridingTest{
    public static void main(String [] args){
        Dog dog = new Hound();
        dog.bark();
    }
}
```



#### How HashMap works in Java?  
[A HashMap in Java stores key-value pairs](http://www.javacodegeeks.com/2014/03/how-hashmap-works-in-java.html). The [HashMap](http://docs.oracle.com/javase/7/docs/api/java/util/HashMap.html) requires a hash function and uses hashCode and equals methods, in order to put and retrieve elements to and from the collection respectively. When the put method is invoked, the [HashMap](http://docs.oracle.com/javase/7/docs/api/java/util/HashMap.html) calculates the hash value of the key and stores the pair in the appropriate index inside the collection. If the key exists, its value is updated with the new value. Some important characteristics of a [HashMap](http://docs.oracle.com/javase/7/docs/api/java/util/HashMap.html) are its capacity, its load factor and the threshold resizing.


#### What differences exist between HashMap and Hashtable?  
There are several differences between `HashMap` and `Hashtable` in Java:

 1. `Hashtable` is synchronized, whereas `HashMap` is not. This makes `HashMap` better for non-threaded applications, as unsynchronized Objects typically perform better than synchronized ones.

 2. `Hashtable` does not allow `null` keys or values.  `HashMap` allows one `null` key and any number of `null` values.

 3. One of HashMap's subclasses is `LinkedHashMap`, so in the event that you'd want predictable iteration order (which is insertion order by default), you could easily swap out the `HashMap` for a `LinkedHashMap`.  This wouldn't be as easy if you were using `Hashtable`.


#### What is the purpose Class.forName method? 
This method is used to method is used to load the driver that will establish a connection to the database.


#### What is JDBC? 
JDBC is an abstraction layer that allows users to choose between databases. [JDBC enables developers to write database applications in Java](http://www.javacodegeeks.com/2014/03/java-8-friday-java-8-will-revolutionize-database-access.html), without having to concern themselves with the underlying details of a particular database.


#### What is the design pattern that Java uses for all Swing components? 
The design pattern used by Java for all Swing components is the Model View Controller (MVC) pattern.


#### How does Garbage Collection prevent a Java application from going out of memory? 
It doesn’t! Garbage Collection simply cleans up unused memory when an object goes out of scope and is no longer needed. However an application could create a huge number of large objects that causes an `OutOfMemoryError`.


#### What do you know about the big-O notation and can you give some examples with respect to different data structures? 
The Big-O notation simply describes how well an algorithm scales or performs in the worst case scenario as the number of elements in a data structure increases. The Big-O notation can also be used to describe other behavior such as memory consumption. Since the collection classes are actually data structures, we usually use the Big-O notation to chose the best implementation to use, based on time, memory and performance. Big-O notation can give a good indication about performance for large amounts of data.


#### What are the Data Types supported by Java? What is Autoboxing and Unboxing? 
The eight primitive data types supported by the Java programming language are:

* byte
* short
* int
* long
* float
* double
* boolean
* char

**Autoboxing** is the automatic conversion made by the Java compiler between the primitive types and their corresponding object wrapper classes. If the conversion goes the other way, this operation is called **unboxing**.


#### What is an Java Applet? 
A Java Applet is program that can be included in a HTML page and be executed in a java enabled client browser. Applets are used for creating dynamic and interactive web applications.


#### What will happen to the Exception object after exception handling? 
The [Exception](http://docs.oracle.com/javase/7/docs/api/java/lang/Exception.html) object will be garbage collected in the next garbage collection.


#### What is the importance of finally block in exception handling? 
A *finally* block will always be executed, whether or not an exception is actually thrown. Even in the case where the catch statement is missing and an exception is thrown, the finally block will still be executed. Last thing to mention is that the finally block is used to release resources like I/O buffers, database connections, etc.


####  What is the purpose of garbage collection in Java, and when is it used? 
The purpose of garbage collection is to identify and discard those objects that are no longer needed by the application, in order for the resources to be reclaimed and reused.


#### What does System.gc() and Runtime.gc() methods do? 
These methods can be used as a hint to the JVM, in order to start a garbage collection. However, this it is up to the Java Virtual Machine (JVM) to start the garbage collection immediately or later in time.



#### What is the difference between Exception and Error in java? 
* An **Error** "indicates serious problems that a reasonable application should not try to catch."
* An **Exception** "indicates conditions that a reasonable application might want to catch."


#### What is reflection and why is it useful? 
The name **reflection** is used to describe code which is able to inspect other code in the same system (or itself) and to make modifications at runtime.

For example, say you have an object of an unknown type in Java, and you would like to call a 'doSomething' method on it if one exists. Java's static typing system isn't really designed to support this unless the object conforms to a known interface, but using reflection, your code can look at the object and find out if it has a method called 'doSomething' and then call it if you want to.

```java
Method method = foo.getClass().getMethod("doSomething", null);
method.invoke(foo, null);
```


#### When does an Object becomes eligible for Garbage collection in Java ?  
A Java object is subject to garbage collection when it becomes unreachable to the program in which it is currently used.


## [[⬆]](#toc) <a name=JavaScript>JavaScript</a> Interview Questions
#### What is Coercion in JavaScript? 
In JavaScript conversion between different two build-in types called `coercion`.  Coercion comes in two forms in JavaScript: *explicit* and *implicit*.

Here's an example of explicit coercion:
```js
var a = "42";

var b = Number( a );

a;				// "42"
b;				// 42 -- the number!
```
And here's an example of implicit coercion:
```js
var a = "42";

var b = a * 1;	// "42" implicitly coerced to 42 here

a;				// "42"
b;				// 42 -- the number!
``` 

#### Explain equality in JavaScript 
JavaScript has both strict and type–converting comparisons: 
* **Strict comparison (e.g., ===)** checks for value equality without allowing *coercion*
* **Abstract comparison (e.g. ==)** checks for value equality with *coercion* allowed

```js
var a = "42";
var b = 42;

a == b;			// true
a === b;		// false
```
Some simple equalityrules:
* If either value (aka side) in a comparison could be the `true` or `false` value, avoid `==` and use `===`.
* If either value in a comparison could be of these specific values (`0`, `""`, or `[]` -- empty array), avoid `==` and use `===`.
* In all other cases, you're safe to use `==`. Not only is it safe, but in many cases it simplifies your code in a way that improves readability.

#### What is typeof operator? 
JavaScript provides a `typeof` operator that can examine a value and tell you what type it is:
```js
var a;
typeof a;				// "undefined"

a = "hello world";
typeof a;				// "string"

a = 42;
typeof a;				// "number"

a = true;
typeof a;				// "boolean"

a = null;
typeof a;				// "object" -- weird, bug

a = undefined;
typeof a;				// "undefined"

a = { b: "c" };
typeof a;				// "object"
```


#### What is the object type? 
The object type refers to a compound value where you can set properties (named locations) that each hold their own values of any type. 

```js
var obj = {
	a: "hello world", // property
	b: 42,
	c: true
};

obj.a;		// "hello world", accessed with doted notation
obj.b;		// 42
obj.c;		// true

obj["a"];	// "hello world", accessed with bracket notation
obj["b"];	// 42
obj["c"];	// true
```
Bracket notation is also useful if you want to access a property/key but the name is stored in another variable, such as:
```js
var obj = {
	a: "hello world",
	b: 42
};

var b = "a";

obj[b];			// "hello world"
obj["b"];		// 42
```

#### Explain arrays in JavaScript 
An `array` is an object that holds values (of any type) not particularly in named properties/keys, but rather in numerically indexed positions:

```js
var arr = [
	"hello world",
	42,
	true
];

arr[0];			// "hello world"
arr[1];			// 42
arr[2];			// true
arr.length;		// 3

typeof arr;		// "object"
```


#### What is Scope in JavaScript? 
In JavaScript, each function gets its own *scope*. Scope is basically a collection of variables as well as the rules for how those variables are accessed by name. Only code inside that function can access that function's scoped variables.

A variable name has to be unique within the same scope. A scope can be nested inside another scope. If one scope is nested inside another, code inside the innermost scope can access variables from either scope.

#### What does "use strict" do? 
The `use strict` literal is entered at the top of a JavaScript program or at the top of a function and it helps you write safer JavaScript code by throwing an error if a global variable is created by mistake. For example, the following program will throw an error:

```js
function doSomething(val) {
  "use strict"; 
  x = val + 10;
}`
```

It will throw an error because `x` was not defined and it is being set to some value in the global scope, which isn't allowed with `use strict` The small change below fixes the error being thrown:

```js
function doSomething(val) {
  "use strict"; 
  var x = val + 10;
}
```


#### Explain Null and Undefined in JavaScript 
JavaScript (and by extension TypeScript) has two bottom types: `null` and `undefined`. They are *intended* to mean different things:
* Something hasn't been initialized : `undefined`.
* Something is currently unavailable: `null`.

#### What's the difference between throw Error('msg') vs throw new Error('msg')? 
**Details:**
```js
var err1 = Error('message');
var err2 = new Error('message');
```
Which one is correct and why?

Both are fine; the function call `Error(…)` is equivalent to the object creation expression `new Error(…)` with the same arguments.


#### Is there anyway to force using strict mode in Node.js? 
you can place

```js
"use strict";
```

at the top of your file in **node >= 0.10.7**, but if you want your whole app to run in strict (**including external modules**) you can do this

```sh
node --use_strict
```


#### What's the difference between host objects and native objects? 
* Native objects are objects that are part of the JavaScript language defined by the ECMAScript specification, such as `String`, `Math`, `RegExp`, `Object`, `Function`, etc.
* Host objects are provided by the runtime environment (browser or Node), such as `window`, `XMLHTTPRequest`, etc.


#### What is strict mode? 
*Strict Mode* is a new feature in ECMAScript 5 that allows you to place a program, or a function, in a "strict" operating context. This strict context prevents certain actions from being taken and throws more exceptions.

```js
// Non-strict code...

(function(){
  "use strict";

  // Define your library strictly...
})();

// Non-strict code...
```

#### What is the difference between `==` and `===`? 
`==` is the abstract equality operator while `===` is the strict equality operator. The `==` operator will compare for equality after doing any necessary type conversions. The `===` operator will not do type conversion, so if two values are not the same type `===` will simply return `false`. When using `==`, funky things can happen, such as:

```js
1 == '1'; // true
1 == [1]; // true
1 == true; // true
0 == ''; // true
0 == '0'; // true
0 == false; // true
```

My advice is never to use the `==` operator, except for convenience when comparing against `null` or `undefined`, where `a == null` will return `true` if `a` is `null` or `undefined`.

```js
var a = null;
console.log(a == null); // true
console.log(a == undefined); // true
```


#### Explain the same-origin policy with regards to JavaScript. 
The same-origin policy prevents JavaScript from making requests across domain boundaries. An origin is defined as a combination of URI scheme, hostname, and port number. This policy prevents a malicious script on one page from obtaining access to sensitive data on another web page through that page's Document Object Model.


#### Make this work 
**Details:**
```js
duplicate([1, 2, 3, 4, 5]); // [1,2,3,4,5,1,2,3,4,5]
```

```js
function duplicate(arr) {
  return arr.concat(arr);
}

duplicate([1, 2, 3, 4, 5]); // [1,2,3,4,5,1,2,3,4,5]
```


#### FizzBuzz Challenge 
**Details:**
Create a for loop that iterates up to `100` while outputting **"fizz"** at multiples of `3`, **"buzz"** at multiples of `5` and **"fizzbuzz"** at multiples of `3` and `5`.

Check out this version of FizzBuzz:

```js
for (let i = 1; i <= 100; i++) {
  let f = i % 3 == 0,
    b = i % 5 == 0;
  console.log(f ? (b ? 'FizzBuzz' : 'Fizz') : b ? 'Buzz' : i);
}
```


#### What is a Polyfill? 
A polyfill is essentially the specific code (or plugin) that would allow you to have some specific functionality that you expect in current or “modern” browsers to also work in other browsers that do not have the support for that functionality built in.
* Polyfills are not part of the HTML5 standard
* Polyfilling is not limited to Javascript


#### Why would you use something like the `load` event? Does this event have disadvantages? Do you know any alternatives, and why would you use those? 
The `load` event fires at the end of the document loading process. At this point, all of the objects in the document are in the DOM, and all the images, scripts, links and sub-frames have finished loading.

The DOM event `DOMContentLoaded` will fire after the DOM for the page has been constructed, but do not wait for other resources to finish loading. This is preferred in certain cases when you do not need the full page to be loaded before initializing.


#### Why is it, in general, a good idea to leave the global scope of a website as-is and never touch it? 
Every script has access to the global scope, and if everyone uses the global namespace to define their variables, collisions will likely occur. Use the module pattern (IIFEs) to encapsulate your variables within a local namespace.


#### What are some of the advantages/disadvantages of writing JavaScript code in a language that compiles to JavaScript? 
Some examples of languages that compile to JavaScript include CoffeeScript, Elm, ClojureScript, PureScript, and TypeScript.

Advantages:

* Fixes some of the longstanding problems in JavaScript and discourages JavaScript anti-patterns.
* Enables you to write shorter code, by providing some syntactic sugar on top of JavaScript, which I think ES5 lacks, but ES2015 is awesome.
* Static types are awesome (in the case of TypeScript) for large projects that need to be maintained over time.

Disadvantages:

* Require a build/compile process as browsers only run JavaScript and your code will need to be compiled into JavaScript before being served to browsers.
* Debugging can be a pain if your source maps do not map nicely to your pre-compiled source.
* Most developers are not familiar with these languages and will need to learn it. There's a ramp up cost involved for your team if you use it for your projects.
* Smaller community (depends on the language), which means resources, tutorials, libraries, and tooling would be harder to find.
* IDE/editor support might be lacking.
* These languages will always be behind the latest JavaScript standard.
* Developers should be cognizant of what their code is being compiled to — because that is what would actually be running, and that is what matters in the end.

Practically, ES2015 has vastly improved JavaScript and made it much nicer to write. I don't really see the need for CoffeeScript these days.


#### What language constructions do you use for iterating over object properties and array items? 
For objects:

* `for` loops - `for (var property in obj) { console.log(property); }`. However, this will also iterate through its inherited properties, and you will add an `obj.hasOwnProperty(property)` check before using it.
* `Object.keys()` - `Object.keys(obj).forEach(function (property) { ... })`. `Object.keys()` is a static method that will lists all enumerable properties of the object that you pass it.
* `Object.getOwnPropertyNames()` - `Object.getOwnPropertyNames(obj).forEach(function (property) { ... })`. `Object.getOwnPropertyNames()` is a static method that will lists all enumerable and non-enumerable properties of the object that you pass it.

For arrays:

* `for` loops - `for (var i = 0; i < arr.length; i++)`. The common pitfall here is that `var` is in the function scope and not the block scope and most of the time you would want block scoped iterator variable. ES2015 introduces `let` which has block scope and it is recommended to use that instead. So this becomes: `for (let i = 0; i < arr.length; i++)`.
* `forEach` - `arr.forEach(function (el, index) { ... })`. This construct can be more convenient at times because you do not have to use the `index` if all you need is the array elements. There are also the `every` and `some` methods which will allow you to terminate the iteration early.

Most of the time, I would prefer the `.forEach` method, but it really depends on what you are trying to do. `for` loops allow more flexibility, such as prematurely terminate the loop using `break` or incrementing the iterator more than once per loop.


#### What is let keyword in JavaScript? 
In addition to creating declarations for variables at the function level, ES6 lets you declare variables to belong to individual blocks (pairs of { .. }), using the `let` keyword. 


#### Explain what a callback function is and provide a simple example. 
A `callback` function is a function that is passed to another function as an argument and is executed after some operation has been completed. Below is an example of a simple callback function that logs to the console *after* some operations have been completed.

```js
function modifyArray(arr, callback) {
  // do something to arr here
  arr.push(100);
  // then execute the callback function that was passed
  callback();
}

var arr = [1, 2, 3, 4, 5];

modifyArray(arr, function() {
  console.log("array has been modified", arr);
});
```


#### Being told that an unsorted array contains (n - 1) of n consecutive numbers (where the bounds are defined), find the missing number in O(n) time 
```js
// The output of the function should be 8
var arrayOfIntegers = [2, 5, 1, 4, 9, 6, 3, 7];
var upperBound = 9;
var lowerBound = 1;

findMissingNumber(arrayOfIntegers, upperBound, lowerBound); // 8

function findMissingNumber(arrayOfIntegers, upperBound, lowerBound) {
  // Iterate through array to find the sum of the numbers
  var sumOfIntegers = 0;
  for (var i = 0; i < arrayOfIntegers.length; i++) {
    sumOfIntegers += arrayOfIntegers[i];
  }

  // Find theoretical sum of the consecutive numbers using a variation of Gauss Sum.
  // Formula: [(N * (N + 1)) / 2] - [(M * (M - 1)) / 2];
  // N is the upper bound and M is the lower bound

  upperLimitSum = (upperBound * (upperBound + 1)) / 2;
  lowerLimitSum = (lowerBound * (lowerBound - 1)) / 2;

  theoreticalSum = upperLimitSum - lowerLimitSum;

  return theoreticalSum - sumOfIntegers;
}
```


#### Remove duplicates of an array and return an array of only unique elements 
```js
// ES6 Implementation
var array = [1, 2, 3, 5, 1, 5, 9, 1, 2, 8];

Array.from(new Set(array)); // [1, 2, 3, 5, 9, 8]

// ES5 Implementation
var array = [1, 2, 3, 5, 1, 5, 9, 1, 2, 8];

uniqueArray(array); // [1, 2, 3, 5, 9, 8]

function uniqueArray(array) {
  var hashmap = {};
  var unique = [];

  for(var i = 0; i < array.length; i++) {
    // If key returns undefined (unique), it is evaluated as false.
    if(!hashmap.hasOwnProperty(array[i])) {
      hashmap[array[i]] = 1;
      unique.push(array[i]);
    }
  }

  return unique;
}
```


#### Explain Values and Types in JavaScript 
JavaScript has typed values, not typed variables. The following built-in types are available:
* `string`
* `number`
* `boolean`
* `null` and `undefined`
* `object`
* `symbol` (new to ES6)

#### How would you check if a number is an integer? 
A very simply way to check if a number is a decimal or integer is to see if there is a remainder left when you divide by 1.

```js
function isInt(num) {
  return num % 1 === 0;
}

console.log(isInt(4)); // true
console.log(isInt(12.2)); // false
console.log(isInt(0.3)); // false
```


#### Given a string, reverse each word in the sentence 
**Details:**
For example `Welcome to this Javascript Guide!` should be become `emocleW ot siht tpircsavaJ !ediuG`

```js
var string = "Welcome to this Javascript Guide!";

// Output becomes !ediuG tpircsavaJ siht ot emocleW
var reverseEntireSentence = reverseBySeparator(string, "");

// Output becomes emocleW ot siht tpircsavaJ !ediuG
var reverseEachWord = reverseBySeparator(reverseEntireSentence, " ");

function reverseBySeparator(string, separator) {
  return string.split(separator).reverse().join(separator);
}
```


#### Write a function that would allow you to do this. 
**Details:**
```js
var addSix = createBase(6);
addSix(10); // returns 16
addSix(21); // returns 27
```

You can create a closure to keep the value passed to the function `createBase` even after the inner function is returned. The inner function that is being returned is created within an outer function, making it a closure, and it has access to the variables within the outer function, in this case the variable `baseNumber`.

```js
function createBase(baseNumber) {
  return function(N) {
    // we are referencing baseNumber here even though it was declared
    // outside of this function. Closures allow us to do this in JavaScript
    return baseNumber + N;
  }
}

var addSix = createBase(6);
addSix(10);
addSix(21);
```


#### How would you use a closure to create a private counter? 
You can create a function within an outer function (a closure) that allows you to update a private variable but the variable wouldn't be accessible from outside the function without the use of a helper function.

```js
function counter() {
  var _counter = 0;
  // return an object with several functions that allow you
  // to modify the private _counter variable
  return {
    add: function(increment) { _counter += increment; },
    retrieve: function() { return 'The counter is currently at: ' + _counter; }
  }
}

// error if we try to access the private variable like below
// _counter;

// usage of our counter function
var c = counter();
c.add(5); 
c.add(9); 

// now we can access the private variable in the following way
c.retrieve(); // => The counter is currently at: 14
```


#### Implement enqueue and dequeue using only two stacks 
*Enqueue* means to add an element, *dequeue* to remove an element.

```js
var inputStack = []; // First stack
var outputStack = []; // Second stack

// For enqueue, just push the item into the first stack
function enqueue(stackInput, item) {
  return stackInput.push(item);
}

function dequeue(stackInput, stackOutput) {
  // Reverse the stack such that the first element of the output stack is the
  // last element of the input stack. After that, pop the top of the output to
  // get the first element that was ever pushed into the input stack
  if (stackOutput.length <= 0) {
    while(stackInput.length > 0) {
      var elementToOutput = stackInput.pop();
      stackOutput.push(elementToOutput);
    }
  }

  return stackOutput.pop();
}
```


#### How to check if an object is an array or not? Provide some code. 
> The best way to find whether an object is instance of a particular class or not using `toString` method from `Object.prototype`

```javascript
var arrayList = [1 , 2, 3];
```

One of the best use cases of type checking of an object is when we do method overloading in JavaScript. For understanding this let say we have a method called `greet` which take one single string and also a list of string, so making our `greet` method workable in both situation we need to know what kind of parameter is being passed, is it single value or list of value?

```javascript
function greet(param) {
  if() {
    // here have to check whether param is array or not
  }
  else {
  }
}
```

However, in above implementation it might not necessary to check type for array, we can check for single value string and put array logic code in else block, let see below code for the same.

```javascript
 function greet(param) {
   if(typeof param === 'string') {
   }
   else {
     // If param is of type array then this block of code would execute
   }
 }
```

Now it's fine we can go with above two implementations, but when we have a situation like a parameter can be `single value`, `array`, and `object` type then we will be in trouble.

Coming back to checking type of object, As we mentioned that we can use `Object.prototype.toString`

```javascript
if(Object.prototype.toString.call(arrayList) === '[object Array]') {
  console.log('Array!');
}
```

If you are using `jQuery` then you can also used jQuery `isArray` method:

```javascript
if($.isArray(arrayList)) {
  console.log('Array');
} else {
  console.log('Not an array');
}
```

FYI jQuery uses `Object.prototype.toString.call` internally to check whether an object is an array or not.

In modern browser, you can also use:

```javascript
Array.isArray(arrayList);
```

`Array.isArray` is supported by Chrome 5, Firefox 4.0, IE 9, Opera 10.5 and Safari 5


#### How to empty an array in JavaScript? 
**Details:**
```js
var arrayList =  ['a', 'b', 'c', 'd', 'e', 'f'];
```
How could we empty the array above?

**Method 1**

```javascript
arrayList = [];
```

Above code will set the variable `arrayList` to a new empty array. This is recommended if you don't have **references to the original array** `arrayList` anywhere else because It will actually create a new empty array. You should be careful with this way of empty the array, because if you have referenced this array from another variable, then the original reference array will remain unchanged, Only use this way if you have only referenced the array by its original variable `arrayList`.

For Instance:

```javascript
var arrayList = ['a', 'b', 'c', 'd', 'e', 'f']; // Created array
var anotherArrayList = arrayList;  // Referenced arrayList by another variable
arrayList = []; // Empty the array
console.log(anotherArrayList); // Output ['a', 'b', 'c', 'd', 'e', 'f']
```

**Method 2**

```javascript
arrayList.length = 0;
```

Above code will clear the existing array by setting its length to 0. This way of empty the array also update all the reference variable which pointing to the original array. This way of empty the array is useful when you want to update all the another reference variable which pointing to `arrayList`.

For Instance:

```javascript
var arrayList = ['a', 'b', 'c', 'd', 'e', 'f']; // Created array
var anotherArrayList = arrayList;  // Referenced arrayList by another variable
arrayList.length = 0; // Empty the array by setting length to 0
console.log(anotherArrayList); // Output []
```

**Method 3**

```javascript
arrayList.splice(0, arrayList.length);
```

Above implementation will also work perfectly. This way of empty the array will also update all the references of the original array.

```javascript
var arrayList = ['a', 'b', 'c', 'd', 'e', 'f']; // Created array
var anotherArrayList = arrayList;  // Referenced arrayList by another variable
arrayList.splice(0, arrayList.length); // Empty the array by setting length to 0
console.log(anotherArrayList); // Output []
```

**Method 4**

```javascript
while(arrayList.length) {
  arrayList.pop();
}
```

Above implementation can also empty the array. But not recommended to use often.


#### Write a "mul" function which will properly when invoked as below syntax. 
**Details:**
```javascript
console.log(mul(2)(3)(4)); // output : 24
console.log(mul(4)(3)(4)); // output : 48
```

```javascript
function mul (x) {
  return function (y) { // anonymous function
    return function (z) { // anonymous function
      return x * y * z;
    };
  };
}
```

Here `mul` function accept the first argument and return anonymous function which take the second parameter and return anonymous function which take the third parameter and return multiplication of arguments which is being passed in successive

In JavaScript function defined inside has access to outer function variable and function is the first class object so it can be returned by function as well and passed as argument in another function.
- A function is an instance of the Object type
- A function can have properties and has a link back to its constructor method
- Function can be stored as variable
- Function can be pass as a parameter to another function
- Function can be returned from function


#### Explain event bubbling and how one may prevent it 
**Event bubbling** is the concept in which an event triggers at the deepest possible element, and triggers on parent elements in nesting order. As a result, when clicking on a child element one may exhibit the handler of the parent activating.

One way to prevent event bubbling is using `event.stopPropagation()` or `event.cancelBubble` on IE < 9.


## [[⬆]](#toc) <a name=Kotlin>Kotlin</a> Interview Questions
#### How to initialize an array in Kotlin with values? 
**Details:**
In Java an array can be initialized such as:

```java
 int numbers[] = new int[] {10, 20, 30, 40, 50}
```

How does Kotlin's array initialization look like?

```kotlin
val numbers: IntArray = intArrayOf(10, 20, 30, 40, 50)
```


#### How to correctly concatenate a String in Kotlin? 
In Kotlin, you can concatenate 
1. using string interpolation / templates
 ```kotlin
val a = "Hello"
val b = "World"
val c = "$a $b"
 ```
2. using the + / `plus()` operator
 ```kotlin
 val a = "Hello"
 val b = "World" 
 val c = a + b   // same as calling operator function a.plus(b)
 val c = a.plus(b)
 
 print(c)
 ```
3. using the `StringBuilder`
 ```kotlin
 val a = "Hello"
 val b = "World"
 
 val sb = StringBuilder()
 sb.append(a).append(b)
 val c = sb.toString()
 
 print(c)
 ```


#### What is basic difference between fold and reduce in Kotlin? When to use which? 
* `fold` takes an initial value, and the first invocation of the lambda you pass to it will receive that initial value and the first element of the collection as parameters.

 ```kotlin 
 listOf(1, 2, 3).fold(0) { sum, element -> sum + element }
 ```
 The first call to the lambda will be with parameters `0` and `1`.

 Having the ability to pass in an initial value is useful _if you have to provide some sort of default value or parameter for your operation_.

* `reduce` doesn't take an initial value, but instead starts with the first element of the collection as the accumulator (called `sum` in the following example)

 ```kotlin
 listOf(1, 2, 3).reduce { sum, element -> sum + element }
 ```

 The first call to the lambda here will be with parameters `1` and `2`.


#### What is the idiomatic way to remove duplicate strings from array? 
**Details:**
How to remove duplicates from an `Array<String?>` in Kotlin?

Use the `distinct` extension function:

```kotlin
val a = arrayOf("a", "a", "b", "c", "c")
val b = a.distinct() // ["a", "b", "c"]
```

You can also use:
* `toSet`, `toMutableSet`
* `toHashSet` - if you don't need the original ordering to be preserved

These functions produce a `Set` instead of a `List` and should be a little bit more efficient than distinct.


#### What is the difference between var and val in Kotlin? 
* **var** is like `general` variable and it's known as a _mutable_ variable in kotlin and can be assigned multiple times.

* **val** is like `Final` variable and it's known as _immutable_ in Kotlin and can be initialized only single time.

```sh
+----------------+-----------------------------+---------------------------+
|                |             val             |            var            |
+----------------+-----------------------------+---------------------------+
| Reference type | Immutable(once initialized  | Mutable(can able to change|
|                | can't be reassigned)        | value)                    |
+----------------+-----------------------------+---------------------------+
| Example        | val n = 20                  | var n = 20                |
+----------------+-----------------------------+---------------------------+
| In Java        | final int n = 20;           | int n = 20;               |
+----------------+-----------------------------+---------------------------+
```


#### Where should I use var and where val? 
Use **var** where value is changing _frequently_. For example while getting location of android device:

```kotlin
var integerVariable : Int? = null
```

Use **val** where there is _no change_ in value in whole class. For example you want set textview or button's text programmatically.

```kotlin
val stringVariables : String = "Button's Constant or final Text"
```


#### What is a data class in Kotlin? 
We frequently create classes whose main purpose is to hold data. In Kotlin, this is called a data class and is marked as `data`:

```kotlin
data class User(val name: String, val age: Int)
```

To ensure consistency and meaningful behavior of the generated code, data classes have to fulfill the following requirements:

* The primary constructor needs to have at least one parameter;
* All primary constructor parameters need to be marked as val or var;
* Data classes cannot be abstract, open, sealed or inner;


#### What is a primary constructor in Kotlin? 
The **primary constructor** is part of the class header. Unlike Java, you don't need to declare a constructor in the body of the class. Here's an example:

```kotlin
class Person(val firstName: String, var age: Int) {
    // class body
}
```

The main idea is by removing the constructor keyword, our code gets simplified and easy to understand.


#### How to create singleton in Kotlin? 
Just use `object`.
```kotlin
object SomeSingleton
```
The above Kotlin object will be compiled to the following equivalent Java code:
```java
public final class SomeSingleton {
   public static final SomeSingleton INSTANCE;

   private SomeSingleton() {
      INSTANCE = (SomeSingleton)this;
      System.out.println("init complete");
   }

   static {
      new SomeSingleton();
   }
}
```
This is the preferred way to implement singletons on a JVM because it enables thread-safe lazy initialization without having to rely on a locking algorithm like the complex double-checked locking.


## [[⬆]](#toc) <a name=LINQ>LINQ</a> Interview Questions
#### What is LINQ? 
**LINQ** stands for Language INtegrated Query. LINQ allows us to write queries over local collection objects and remote data sources like SQL, XML documents etc. We can write LINQ query on any collection class which implements the `IEnumerable` interface.


#### Explain what is LINQ? Why is it required? 
**Language Integrated Query** or **LINQ** is the collection of standard query operators which provides query facilities into.NET framework language like C#, VB.NET. LINQ is required as it bridges the gap between the world of data and the world of objects.


#### What are the types of LINQ? 
*   LINQ to Objects
*   LINQ to XML
*   LINQ to Dataset
*   LINQ to SQL
*   LINQ to Entities


#### List out the three main components of LINQ? 
Three main components of LINQ are

*   Standard Query Operators
*   Language Extensions
*   LINQ Providers


#### What are Extension Methods? 
**Extension methods** are static functions of a static class. These methods can be invoked just like instance method syntax. These methods are useful when we can not want to modify the class. Consider:

```csharp
public static class StringMethods
{
    public static bool IsStartWithLetterM(this string s)
    {
        return s.StartsWith("m");
    }
}
class Program
{
    static void Main(string[] args)
    {
        string value = "malslfds";
        Console.WriteLine(value.IsStartWithLetterM()); //print true;
 
        Console.ReadLine();
    }
}
```


#### Explain why SELECT clause comes after FROM clause in LINQ? 
With other programming language and C#, LINQ is used, it requires all the variables to be declared first. “FROM” clause of LINQ query defines the range or conditions to select records. So, FROM clause must appear before SELECT in LINQ.


#### What is Anonymous function? 
An Anonymous function is a special function which does not have any name. We just define their parameters and define the code into the curly braces.

Consider:
```csharp
delegate int func(int a, int b);
static void Main(string[] args)
{
    func f1 = delegate(int a, int b)
    {
        return a + b;
    };
 
    Console.WriteLine(f1(1, 2));
}
```


####  What are Anonymous Types? 
Anonymous types are types that are generated by compiler at run time. When we create a anonymous type we do not specify a name. We just write properties names and their values. Compiler at runtime create these properties and assign values to them.

```csharp
var k = new { FirstProperty = "value1", SecondProperty = "value2" };
Console.WriteLine(k.FirstProperty);
```

Anonymous class is useful in LINQ queries to save our intermediate results.

There are some restrictions on Anonymous types as well:

*   Anonymous types can not implement interfaces.
*   Anonymous types can not specify any methods.
*   We can not define static members.
*   All defined properties must be initialized.
*   We can only define public fields.


#### Explain how LINQ is useful than Stored Procedures? 
*   **Debugging:** It is difficult to debug a stored procedure but as LINQ is part of.NET, visual studio debugger can be used to debug the queries
*   **Deployment:** For stored procedure, additional script should be provided but with LINQ everything gets compiled into single DLL hence deployment becomes easy
*   **Type Safety:** LINQ is type safe, so queries errors are type checked at compile time


#### In LINQ how will you find the index of the element using where() with Lambda Expressions? 
In order to find the index of the element use the overloaded version of `where()` with the lambda expression:

```csharp
where(( i, ix ) => i == ix);
```


#### Mention what is the role of DataContext classes in LINQ? 
**DataContext** class acts as a bridge between SQL Server database and the LINQ to SQL. For accessing the database and also for changing the data in the database, it contains connections string and the functions. Essentially a DataContext class performs the following three tasks:

* Create connection to database.
* It submits and retrieves object to database.
* Converts objects to SQL queries and vice versa.


#### Explain what is the purpose of LINQ providers in LINQ? 
LINQ providers are set of classes that take an LINQ query which generates method that executes an equivalent query against a particular data source.


#### Explain what is “LINQ to Objects”? 
When LINQ queries any `IEnumerable(<T>)` collection or IEnumerable directly without the use of an intermediate LINQ provider or API such as LINQ to SQL or LINQ to XML is referred as **LINQ to Objects**.


## [[⬆]](#toc) <a name=Laravel>Laravel</a> Interview Questions
#### What is the Laravel? 
**Laravel** is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern.


#### Why do you prefer using Laravel? 
* Simple MVC that can be extended easily
* Clean and secure routing
* Powerful Eloquent ORM for database
* Migrations
* Third party plugins


#### Is there any CLI for Laravel? 
PHP artisan is the command line interface/tool included with Laravel. It provides a number of helpful commands that can help you while you build your application easily. Here are the list of some artisian commands:

* php artisan list
* php artisan help
* php artisan tinker
* php artisan make
* php artisan –versian
* php artisan make modal modal_name
* php artisan make controller controller_name


#### What are some benefits of Laravel over other Php frameworks? 
* Setup and customisation process is  easy and fast as compared to others.
* Inbuilt Authentication System
* Supports multiple file systems
* Pre-loaded packages like Laravel Socialite, Laravel cashier, Laravel elixir, Passport, Laravel Scout
* Eloquent ORM (Object Relation Mapping) with PHP active record implementation
* Built in command line tool “Artisan” for creating a code skeleton ,database structure and build their migration


#### What is Service Container? 
The Laravel **service container** is a tool for managing class dependencies and performing dependency injection. 


#### Why are migrations necessary? 
Migrations are necessary because:

* Without migrations, database consistency when sharing an app is almost impossible, especially as more and more people collaborate on the web app.
* Your production database needs to be synced as well.


#### What is the purpose of the Eloquent cursor() method in Laravel ? 
The **cursor** method allows you to iterate through your database records using a cursor, which will only execute a single query. When processing large amounts of data, the cursor method may be used to greatly reduce your memory usage.

```js
foreach (Product::where('name', 'bar')->cursor() as $flight) {
   //do some stuff
}
```


#### Explain Migrations in Laravel 
**Laravel Migrations** are like version control for the database, allowing a team to easily modify and share the application’s database schema. Migrations are typically paired with Laravel’s schema builder to easily build the application’s database schema.


#### What is Eloquent Models? 
The Eloquent ORM included with Laravel provides a beautiful, simple ActiveRecord implementation for working with your database. Each database table has a corresponding **Model** which is used to interact with that table. Models allow you to query for data in your tables, as well as insert new records into the table.


#### List some official packages of Laravel 
* **Cashier** - Laravel Cashier provides an expressive, fluent interface to Stripe's and Braintree's subscription billing services. 
* **Dusk** - Laravel Dusk provides an expressive, easy-to-use browser automation and testing API.
* **Envoy** - Laravel Envoy provides a clean, minimal syntax for defining common tasks you run on your remote servers. 
* **Horizon** - Horizon provides a dashboard and code-driven configuration for your Laravel powered Redis queues. 
* **Passport** - provides a full OAuth2 server implementation for your Laravel application in a matter of minutes.
* **Scout** - Laravel Scout provides a simple, driver based solution for adding full-text search to your Eloquent models. 
* **Socialite** - a simple, convenient way to authenticate with OAuth providers using Laravel Socialite. 


#### What are Laravel events? 
Laravel event provides a simple **observer pattern** implementation, that allow to subscribe and listen for events in the application. An event is an incident or occurrence detected and handled by the program.

Below are some events examples in Laravel:

* A new user has registered
* A new comment is posted
* User login/logout
* New product is added.


#### What is the Facade Pattern used for? 
**Facades** provide a *static* interface to classes that are available in the application's service container. Laravel facades serve as *static proxies* to underlying classes in the service container, providing the benefit of a terse, expressive syntax while maintaining more testability and flexibility than traditional static methods.

All of Laravel's facades are defined in the `Illuminate\Support\Facades` namespace. 
Consider:
```js
use Illuminate\Support\Facades\Cache;

Route::get('/cache', function () {
    return Cache::get('key');
});
```


#### How do you generate migrations? 
Migrations are like version control for your database, allowing your team to easily modify and share the application's database schema. 

To create a migration, use:
```js
php artisan make:migration create_users_table
```


#### Which template engine does Laravel use? 
Laravel uses **Blade Templating Engine.**

Blade is the simple, yet powerful templating engine provided with Laravel. Unlike other popular PHP templating engines, Blade does not restrict you from using plain PHP code in your views. In fact, all Blade views are compiled into plain PHP code and cached until they are modified, meaning Blade adds essentially zero overhead to your application. Blade view files use the .blade.php file extension and are typically stored in the `resources/views` directory.


#### What are artisan commands? 
Artisan is the name of the command-line interface included with Laravel. It provides a number of helpful commands for your use while developing your application for example:

```php
php artisan serve // To start Laravel project
```


## [[⬆]](#toc) <a name=MSMQ>MSMQ</a> Interview Questions
#### What is Message in MSMQ? 
Messages are just envelopes that are used to send data through the queues. They can be **application-generated** or **system-generated**. **Application-generated messages** are sent by queued messaging applications.


#### Why do we use MSMQ? 
**Microsoft Message Queuing**, or MSMQ, is technology for asynchronous messaging. Whenever there's need for two or more applications (processes) to send messages to each other without having to immediately know results, MSMQ can be used. MSMQ can communicate between remote machines, even over Internet. It's free and comes with Windows, but is not installed by default.

This mainly addresses the common use case of asynchronous message processing: you have a service `Service1` that communicates (send messages) with another part of your software architecture, say `Service2`.

Main problem: what if `Service2` becomes suddenly unavailable? Will messages be lost?
If you use MSMQ it won't: `Service1` will send messages into a queue, and `Service2` will dequeue when it is available.

MSMQ will resolve following common issues:

 - temporary unavailability of a service: messages are persisted on the disk and will be dequeued when the service becomes available again, so **no messages are lost**
 - as it's fully asynchronous, it'll help a lot in case of **punctual peak load**: your `Service2` won't die under the heavy load, it'll just dequeue and process messages, one after one


#### What is Queue in MSMQ? 
The queue is just a container that stores messages, decoupling the sender from the receiver. MSMQ Queues are not necessarily FIFO (First In, First Out), because messages can be prioritized.

Queues can be **transactional** or **nontransactional**. 
* Transactional Queues can only receive  messages sent within a transactional context. 
* Nontransactional queues can only receive messages sent outside of a transactional context. 

Messages sent in a transactional context are processed in the order in which they were sent.


## [[⬆]](#toc) <a name=MachineLearning>Machine Learning</a> Interview Questions
#### What is Machine Learning? 
**Machine learning** is the study of algorithms and mathematical models that computer systems use to progressively improve their performance on a specific task. 

The name machine learning was coined in 1959 by *Arthur Samuel* as the science of getting computers to act without being explicitly programmed.

*Tom M. Mitchell* provided a widely quoted, more formal definition of the algorithms studied in the machine learning field: "A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P if its performance at tasks in T, as measured by P, improves with experience E."


#### What do you understand by Machine Learning? 

Machine learning is an application of artificial intelligence that provides systems the ability to automatically learn and improve from experience without being explicitly programmed. Machine learning focuses on the development of computer programs that can access data and use it learn for themselves.


#### Give an example that explains Machine Leaning in industry. 
Robots are replacing humans in many areas. It is because robots are programmed such that they can perform the task based on data they gather from sensors. They learn from the data and behaves intelligently


#### What are the different Algorithm techniques in Machine Learning? 
The different types of Algorithm techniques in Machine Learning are as follows:
 * Reinforcement Learning
 * Supervised Learning
 * Unsupervised Learning
 * Semi-supervised Learning
 * Transduction
 * Learning to Learn

### Classification

Classification algorithms are used when the desired output is a discrete label. In other words, they’re helpful when the answer to your question about your business falls under a finite set of possible outcomes. Many use cases, such as determining whether an email is spam or not, have only two possible outcomes. This is called binary classification.

Multi-label classification captures everything else, and is useful for customer segmentation, audio and image categorization, and text analysis for mining customer sentiment. If these are the questions you’re hoping to answer with machine learning in your business, consider algorithms like naive Bayes, decision trees, logistic regression, kernel approximation, and K-nearest neighbors.

### Regression

On the other hand, regression is useful for predicting outputs that are continuous. That means the answer to your question is represented by a quantity that can be flexibly determined based on the inputs of the model rather than being confined to a set of possible labels. Regression problems with time-ordered inputs are called time-series forecasting problems, like ARIMA forecasting, which allows data scientists to explain seasonal patterns in sales, evaluate the impact of new marketing campaigns, and more.

Linear regression is by far the most popular example of a regression algorithm. Though it’s often underrated because of its relative simplicity, it’s a versatile method that can be used to predict housing prices, likelihood of customers to churn, or the revenue a customer will generate. For use cases like these, regression trees and support vector regression are good algorithms to consider if you’re looking for something more sophisticated than linear regression.


#### What is Overfitting in Machine Learning? 
Overfitting in Machine Learning is defined as when a statistical model describes random error or noise instead of underlying relationship or when a model is excessively complex.


#### What s Classification in Machine Learning? 
In machine learning and statistics, classification is the problem of identifying to which of a set of categories (sub-populations) a new observation belongs, on the basis of a training set of data containing observations (or instances) whose category membership is known. Examples are assigning a given email to the "spam" or "non-spam" class, and assigning a diagnosis to a given patient based on observed characteristics of the patient (sex, blood pressure, presence or absence of certain symptoms, etc.). Classification is an example of pattern recognition.

In the terminology of machine learning, classification is considered an instance of supervised learning, i.e., learning where a training set of correctly identified observations is available. The corresponding unsupervised procedure is known as clustering, and involves grouping data into categories based on some measure of inherent similarity or distance.


#### What is Regression Analysis? 
In statistical modeling, regression analysis is a set of statistical processes for estimating the relationships among variables. It includes many techniques for modeling and analyzing several variables, when the focus is on the relationship between a dependent variable and one or more independent variables (or 'predictors'). More specifically, regression analysis helps one understand how the typical value of the dependent variable (or 'criterion variable') changes when any one of the independent variables is varied, while the other independent variables are held fixed.


#### What is the difference between supervised and unsupervised machine learning? 
Supervised learning is a process where it requires training labeled data While Unsupervised learning it doesn’t require data labeling.


#### What is the function of Unsupervised Learning? 
The function of Unsupervised Learning are as below:
* Find clusters of the data
* Find low-dimensional representations of the data
* Find interesting directions in data
* Find interesting coordinates and correlations
* Find novel observations


#### What is the function of Supervised Learning? 
The function of Supervised Learning are as below:
* Classifications
* Speech recognition
* Regression
* Predict time series
* Annotate strings


#### What are the disadvantages of neural networks? 
Neural Network requires a large amount of training data to converge. It’s also difficult to pick the right architecture, and the internal “hidden” layers are incomprehensible.


#### What are the advantages of neural networks? 
Neural networks have led to performance breakthroughs for unstructured datasets such as images, audio, and video. Their incredible flexibility allows them to learn patterns that no other Machine Learning algorithm can learn.


#### What are the disadvantages of decision trees? 
Decision trees are prone to be overfit. However, this can be addressed by ensemble methods like random forests or boosted trees.


#### Explain the difference between Supervised Learning and Unsupervised Learning? 
Supervised machine learning is the more commonly used between the two. It includes such algorithms as linear and logistic regression, multi-class classification, and support vector machines. Supervised learning is so named because the data scientist acts as a guide to teach the algorithm what conclusions it should come up with. It’s similar to the way a child might learn arithmetic from a teacher. Supervised learning requires that the algorithm’s possible outputs are already known and that the data used to train the algorithm is already labeled with correct answers. For example, a classification algorithm will learn to identify animals after being trained on a dataset of images that are properly labeled with the species of the animal and some identifying characteristics.

On the other hand, unsupervised machine learning is more closely aligned with what some call true artificial intelligence — the idea that a computer can learn to identify complex processes and patterns without a human to provide guidance along the way. Although unsupervised learning is prohibitively complex for some simpler enterprise use cases, it opens the doors to solving problems that humans normally would not tackle. Some examples of unsupervised machine learning algorithms include k-means clustering, principal and independent component analysis, and association rules.

While a supervised classification algorithm learns to ascribe inputted labels to images of animals, its unsupervised counterpart will look at inherent similarities between the images and separate them into groups accordingly, assigning its own new label to each group. In a practical example, this type of algorithm is useful for customer segmentation because it will return groups based on parameters that a human may not consider due to pre-existing biases about the company’s demographic.

Choosing to use either a supervised or unsupervised machine learning algorithm typically depends on factors related to the structure and volume of your data and the use case of the issue at hand. A well-rounded data science program will use both types of algorithms to build predictive data models that help stakeholders make decisions across a variety of business challenges.


#### What are the conditions when Overfitting happens? 
One of the important reason and possibility of overfitting is because the criteria used for training the model is not the same as the criteria used to judge the efficacy of a model.


#### How can you avoid overfitting? 
We can avoid overfitting by using:
* Lots of data
* Cross-validation


#### What are the five popular algorithms for Machine Learning? 
Below is the list of five popular algorithms of Machine Learning:
* Decision Trees
* Probabilistic networks
* Nearest Neighbor
* Support vector machines
* Neural Networks


#### What are the different use cases where machine learning algorithms can be used? 
The different use cases where machine learning algorithms can be used are as follows:
* Fraud Detection
* Face detection
* Natural language processing
* Market Segmentation
* Text Categorization
* Bioinformatics


#### What are parametric models and Non-Parametric models? 
Parametric models are those with a finite number of parameters and to predict new data, you only need to know the parameters of the model.
Non Parametric models are those with an unbounded number of parameters, allowing for more flexibility and to predict new data, you need to know the parameters of the model and the state of the data that has been observed.


#### What are the three stages to build the hypotheses or model in machine learning? 
The three stages to build the hypotheses or model in machine learning are:
1. Model building
2. Model testing
3. Applying the model


#### What is Inductive Logic Programming in Machine Learning (ILP)? 
Inductive Logic Programming (ILP) is a subfield of machine learning which uses logical programming representing background knowledge and examples.


#### What is the difference between classification and regression? 
The difference between classification and regression are as follows:
* Classification is about identifying group membership while regression technique involves predicting a response.
* Classification and Regression techniques are related to prediction
* Classification predicts the belonging to a class whereas regression predicts the value from a continuous set
* Classification technique is preferred over regression when the results of the model need to return the belongingness of data points in a dataset with specific explicit categories



#### What are the difference between inductive machine learning and deductive machine learning? 
The difference between inductive machine learning and deductive machine learning are as follows:
Inductive machine learning is where the model learns by examples from a set of observed instances to draw a generalized conclusion whereas in deductive learning the model first draws the conclusion and then the conclusion is drawn.


#### What are the advantages of decision trees? 
The advantages decision trees are:
* Decision trees are easy to interpret
* Nonparametric
* There are relatively few parameters to tune


## [[⬆]](#toc) <a name=Microservices>Microservices</a> Interview Questions
#### Why Would You Opt For Microservices Architecture? 
There are plenty of pros that are offered by Microservices architecture. Here are a few of them:

* Microservices can adapt easily to other frameworks or technologies.
* Failure of a single process does not affect the entire system.
* Provides support to big enterprises as well as small teams.
* Can be deployed independently and in relatively less time.


#### List down the advantages of Microservices Architecture 
* **Independent Development**.	All microservices can be easily developed based on their individual functionality
* **Independent Deployment**.	Based on their services, they can be individually deployed in any application
* **Fault Isolation**.	Even if one service of the application does not work, the system still continues to function
* **Mixed Technology Stack**.	Different languages and technologies can be used to build different services of the same application
* **Granular Scaling**.	Individual components can scale as per need, there is no need to scale all components together


#### Define Microservice Architecture 
**Microservices**, aka **_Microservice Architecture_**, is an architectural style that structures an application as a collection of small autonomous services, modeled around a **business domain.**


## [[⬆]](#toc) <a name=MongoDB>MongoDB</a> Interview Questions
#### Does Mongodb Support Foreign Key Constraints? 
No. MongoDB does not support such relationships. The database does not apply any constraints to the system (i.e.: foreign key constraints), so there are no "cascading deletes" or "cascading updates". Basically, in a NoSQL database it is up to you to decide how to organise the data and its relations if there are any.


#### Which are the most important features of MongoDB? 
* Flexible data model in form of documents
* Agile and highly scalable database
* Faster than traditional databases
* Expressive query language


#### Explain what is MongoDB? 
MongoDB is an open-source document database that provides high performance, high availability, and automatic scaling.
It's Key Features are:
* Document Oriented and NoSQL database.
* Supports Aggregation
* Uses BSON format
* Sharding (Helps in Horizontal Scalability)
* Supports Ad Hoc Queries
* Schema Less
* Capped Collection
* Indexing (Any field in MongoDB can be indexed)
* MongoDB Replica Set (Provides high availability)
* Supports Multiple Storage Engines


#### How many indexes does MongoDB create by default for a new collection? 
By default, MongoDB created the _id collection for every collection.


#### Compare SQL databases and MongoDB at a high level. 
SQL databases store data in form of tables, rows, columns and records. This data is stored in a pre-defined data model which is not very much flexible for today's real-world highly growing applications. MongoDB in contrast uses a flexible structure which can be easily modified and extended.


#### What Is Replication In MongoDB? 
**Replication** is the process of synchronizing data across multiple servers. Replication provides redundancy and increases data availability. With multiple copies of data on different database servers, replication protects a database from the loss of a single server. Replication also allows you to recover from hardware failure and service interruptions.


#### What is “Namespace” in MongoDB? 
MongoDB stores BSON (Binary Interchange and Structure Object Notation) objects in the collection. The concatenation of the collection name and database name is called a namespace


#### If you remove an object attribute, is it deleted from the database? 
Yes, it be. Remove the attribute and then re-save () the object.


#### Why does Profiler use in MongoDB? 
MongoDB uses a database profiler to perform characteristics of each operation against the database. You can use a profiler to find queries and write operations


#### What is BSON in MongoDB? 
**BSON** is a binary serialization format used to store documents and make remote procedure calls in MongoDB. BSON extends the JSON model to provide additional data types, ordered fields, and to be efficient for encoding and decoding within different languages. 



#### Does MongoDB need a lot space of Random Access Memory (RAM)? 
No. MongoDB can be run on small free space of RAM.


#### How is data stored in MongoDB? 
Data in MongoDB is stored in BSON documents – JSON-style data structures. Documents contain one or more fields, and each field contains a value of a specific data type, including arrays, binary data and sub-documents. Documents that tend to share a similar structure are organized as collections. It may be helpful to think of documents as analogous to rows in a relational database, fields as similar to columns, and collections as similar to tables.

The advantages of using documents are:

* Documents (i.e. objects) correspond to native data types in many programming languages.
* Embedded documents and arrays reduce need for expensive joins.
* Dynamic schema supports fluent polymorphism.


#### Mention the command to insert a document in a database called school and collection called persons. 
```js
use school;
db.persons.insert( { name: "kadhir", dept: "CSE" } )
```


#### What are Indexes in MongoDB? 
Indexes support the efficient execution of queries in MongoDB. Without indexes, MongoDB must perform a collection scan, i.e. scan every document in a collection, to select those documents that match the query statement. If an appropriate index exists for a query, MongoDB can use the index to limit the number of documents it must inspect.


#### What is a replica set? 
It is a group of mongo instances that maintain same data set. Replica sets provide redundancy and high availability, and are the basis for all production deployments.


#### Can you create an index on an array field in MongoDB? If yes, what happens in this case? 
Yes. An array field can be indexed in MongoDB. In this case, MongoDB would index each value of the array so you can query for individual items:

```js
> db.col1.save({'colors': ['red','blue']})
> db.col1.ensureIndex({'colors':1})

> db.col1.find({'colors': 'red'})
{ "_id" : ObjectId("4ccc78f97cf9bdc2a2e54ee9"), "colors" : [ "red", "blue" ] }
> db.col1.find({'colors': 'blue'})
{ "_id" : ObjectId("4ccc78f97cf9bdc2a2e54ee9"), "colors" : [ "red", "blue" ] }
```


#### When should we embed one document within another in MongoDB? 
You should consider embedding documents for:

* *contains* relationships between entities
* One-to-many relationships
* Performance reasons


## [[⬆]](#toc) <a name=Node.js>Node.js</a> Interview Questions
#### What is Node.js? 
Node.js is a web application framework built on Google Chrome's JavaScript Engine (V8 Engine).

Node.js comes with runtime environment on which a Javascript based script can be interpreted and executed (It is analogus to JVM to JAVA byte code). This runtime allows to execute a JavaScript code on any machine outside a browser. Because of this runtime of Node.js, JavaScript is now can be executed on server as well.

*Node.js = Runtime Environment + JavaScript Library*


#### What is npm? 
`npm` stands for Node Package Manager. npm provides following two main functionalities:

*   Online repositories for node.js packages/modules which are searchable on [search.nodejs.org](http://search.nodejs.org)
*   Command line utility to install packages, do version management and dependency management of Node.js packages.


#### What are the two types of API functions in Node.js?  
The two types of API functions in Node.js are: a) Asynchronous, non-blocking functions b) Synchronous, blocking functions


#### What is the difference between returning a callback and just calling a callback? 
```js
return callback();
//some more lines of code; -  won't be executed

callback();
//some more lines of code; - will be executed
```

Of course returning will help the context calling async function get the value returned by callback.
```js
function do2(callback) {
    log.trace('Execute function: do2');
    return callback('do2 callback param');
}

var do2Result = do2((param) => {
    log.trace(`print ${param}`);
    return `return from callback(${param})`; // we could use that return
});

log.trace(`print ${do2Result}`);
```
Output:
```sh
C:\Work\Node>node --use-strict main.js
[0] Execute function: do2
[0] print do2 callback param
[0] print return from callback(do2 callback param)
```


#### What are Event Listeners?   
**Event Listeners** are similar to call back functions but are associated with some event. For example when a server listens to http request on a given port a event will be generated and to specify http server has received and will invoke corresponding event listener. Basically, Event listener's are also call backs for a corresponding event.

Node.js has built in event's and built in event listeners. Node.js also provides functionality to create Custom events and Custom Event listeners.


#### What is global installation of dependencies? 
Globally installed packages/dependencies are stored in **<user-directory>**/npm directory. Such dependencies can be used in CLI (Command Line Interface) function of any node.js but can not be imported using require() in Node application directly. To install a Node project globally use -g flag.


#### What is libuv? 
**libuv** is a C library that is used to abstract non-blocking I/O operations to a consistent interface across all supported platforms. It provides mechanisms to handle file system, DNS, network, child processes, pipes, signal handling, polling and streaming. It also includes a thread pool for offloading work for some things that can't be done asynchronously at the operating system level.


#### What is V8? 
The V8 library provides Node.js with a JavaScript engine (a program that converts Javascript code into lower level or machine code that microprocessors can understand), which Node.js controls via the V8 C++ API. V8 is maintained by Google, for use in Chrome.

The Chrome V8 engine :

* The V8 engine is written in C++ and used in Chrome and Nodejs.
* It implements ECMAScript as specified in ECMA-262.
* The V8 engine can run standalone we can embed it with our own C++ program.




#### What are the core modules of Node,js? 
* EventEmitter
* Stream
* FS
* Net
* Global Objects


####  How you can monitor a file for modifications in Node.js ? 
We can take advantage of File System `watch()` function which watches the changes of the file.


#### Could we run an external process with Node.js? 
Yes. *Child process module* enables us to access operating system functionaries or other apps. Scalability is baked into Node and child processes are the key factors to scale our application. You can use child process to run system commands, read large files without blocking event loop,  decompose the application into various “nodes” (That’s why it’s called Node).

Child process module has following three major ways to create child processes –

* spawn  - child_process.spawn launches a new process with a given command.
* exec  - child_process.exec method runs a command in a shell/console and buffers the output.
* fork - The child_process.fork method is a special case of the spawn() to create child processes.


####  List out the differences between AngularJS and NodeJS? 
AngularJS is a web application development framework. It’s a JavaScript and it is different from other web app frameworks written in JavaScript like jQuery. NodeJS is a runtime environment used for building server-side applications while AngularJS is a JavaScript framework mainly useful in building/developing client-side part of applications which run inside a web browser.


#### What do you mean by Asynchronous API? 
All APIs of Node.js library are aynchronous that is non-blocking. It essentially means a Node.js based server never waits for a API to return data. Server moves to next API after calling it and a notification mechanism of Events of Node.js helps server to get response from the previous API call.


#### What is Callback Hell? 
The asynchronous function requires callbacks as a return parameter. When multiple asynchronous functions are chained together then callback hell situation comes up. 


#### If Node.js is single threaded then how it handles concurrency? 
Node provides a single thread to programmers so that code can be written easily and without bottleneck. Node internally uses multiple POSIX threads for various I/O operations such as File, DNS, Network calls etc.

When Node gets I/O request it creates or uses a thread to perform that I/O operation and once the operation is done, it pushes the result to the event queue. On each such event, event loop runs and checks the queue and if the execution stack of Node is empty then it adds the queue result to execution stack.

This is how Node manages concurrency.


#### What are the benefits of using Node.js? 
Following are main benefits of using Node.js

*   **Aynchronous and Event Driven** - All APIs of Node.js library are aynchronous that is non-blocking. It essentially means a Node.js based server never waits for a API to return data. Server moves to next API after calling it and a notification mechanism of Events of Node.js helps server to get response from the previous API call.
*   **Very Fast** - Being built on Google Chrome's V8 JavaScript Engine, Node.js library is very fast in code execution.
*   **Single Threaded but highly Scalable** - Node.js uses a single threaded model with event looping. Event mechanism helps server to respond in a non-bloking ways and makes server highly scalable as opposed to traditional servers which create limited threads to handle requests. Node.js uses a single threaded program and same program can services much larger number of requests than traditional server like Apache HTTP Server.
*   **No Buffering** \- Node.js applications never buffer any data. These applications simply output the data in chunks.


#### Is Node a single threaded application? 
Yes! Node uses a single threaded model with event looping.


#### What is control flow function?   
It is a generic piece of code which runs in between several asynchronous function calls is known as control flow function.


#### What are the key features of Node.js? 
Let’s look at some of the key features of Node.js.

*   **Asynchronous event driven IO helps concurrent request handling –** All APIs of Node.js are asynchronous. This feature means that if a Node receives a request for some Input/Output operation, it will execute that operation in the background and continue with the processing of other requests. Thus it will not wait for the response from the previous requests.
*   **Fast in Code execution –** Node.js uses the V8 JavaScript Runtime engine, the one which is used by Google Chrome. Node has a wrapper over the JavaScript engine which makes the runtime engine much faster and hence processing of requests within Node.js also become faster.
*   **Single Threaded but Highly Scalable –** Node.js uses a single thread model for event looping. The response from these events may or may not reach the server immediately. However, this does not block other operations. Thus making Node.js highly scalable. Traditional servers create limited threads to handle requests while Node.js creates a single thread that provides service to much larger numbers of such requests.
*   **Node.js library uses JavaScript –** This is another important aspect of Node.js from the developer’s point of view. The majority of developers are already well-versed in JavaScript. Hence, development in Node.js becomes easier for a developer who knows JavaScript.
*   **There is an Active and vibrant community for the Node.js framework –** The active community always keeps the framework updated with the latest trends in the web development.
*   **No Buffering –** Node.js applications never buffer any data. They simply output the data in chunks.


#### What is an error-first callback? 
*Error-first callbacks* are used to pass errors and data. The first argument is always an error object that the programmer has to check if something went wrong. Additional arguments are used to pass data.

```js
fs.readFile(filePath, function(err, data) {
  if (err) {
    //handle the error
  }
  // use the data object
});
```


#### How to make Post request in Node.js? 
Following code snippet can be used to make a Post Request in Node.js.

```js
var request = require('request');
request.post('http://www.example.com/action', {
  form: {
    key: 'value'
  }
}, function(error, response, body) {
  if (!error && response.statusCode == 200) {
    console.log(body)
  }
});
```


#### What is the difference between Nodejs, AJAX, and jQuery? 
The one common trait between Node.js, AJAX, and jQuery is that all of them are the advanced implementation of JavaScript. However, they serve completely different purposes.

* Node.js –It is a server-side platform for developing client-server applications. For example, if we’ve to build an online employee management system, then we won’t do it using client-side JS. But the Node.js can certainly do it as it runs on a server similar to Apache, Django not in a browser.

* AJAX (aka Asynchronous Javascript and XML) –It is a client-side scripting technique, primarily designed for rendering the contents of a page without refreshing it. There are a no. of large companies utilizing AJAX such as Facebook and Stack Overflow to display dynamic content.

* jQuery –It is a famous JavaScript module which complements AJAX, DOM traversal, looping and so on. This library provides many useful functions to help in JavaScript development. However, it’s not mandatory to use it but as it also manages cross-browser compatibility, so can help you produce highly maintainable web applications.


#### What's the difference between operational and programmer errors? 
Operation errors are not bugs, but problems with the system, like _request timeout_ or _hardware failure_. On the other hand programmer errors are actual bugs.


## [[⬆]](#toc) <a name=OOP>OOP</a> Interview Questions
#### What is object-oriented programming (OOP)? 
OOP is a technique to develop logical modules, such as classes that contain properties, methods, fields, and events. An object is created in the program to represent a class. Therefore, an object encapsulates all the features, such as data and behavior that are associated to a class. OOP allows developers to develop modular programs and assemble them as software. Objects are used to access data and behaviors of different software modules, such as classes, namespaces, and sharable assemblies. .NET Framework supports only OOP languages, such as Visual Basic .NET, Visual C#, and Visual C++.


#### What is inheritance? 
**Inheritance** allows us to define a class in terms of another class, which makes it easier to create and maintain an application. This also provides an opportunity to reuse the code functionality and speeds up implementation time.

When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class. This existing class is called the base class, and the new class is referred to as the derived class.

The idea of inheritance implements the IS-A relationship. For example, mammal IS A animal, dog IS-A mammal hence dog IS-A animal as well, and so on.


#### What is the difference between procedural and object-oriented programming? 
Procedural programming is based upon the modular approach in which the larger programs are broken into procedures. Each procedure is a set of instructions that are executed one after another. On the other hand, OOP is based upon objects. An object consists of various elements, such as methods and variables.  
  
Access modifiers are not used in procedural programming, which implies that the entire data can be accessed freely anywhere in the program. In OOP, you can specify the scope of a particular data by using access modifiers - _public_, _private_, _internal_, _protected_, and _protected_ internal.


#### What is encapsulation? 
**Encapsulation** is defined _as the process of enclosing one or more items within a physical or logical package_. Encapsulation, in object oriented programming methodology, prevents access to implementation details.


#### What is a class? 
A class describes all the attributes of objects, as well as the methods that implement the behavior of member objects. It is a comprehensive data type, which represents a blue print of objects. It is a template of object. 

A class can be defined as the primary building block of OOP. It also serves as a template that describes the properties, state, and behaviors common to a particular group of objects.

A class contains data and behavior of an entity. For example, the aircraft class can contain data, such as model number, category, and color and behavior, such as duration of flight, speed, and number of passengers. A class inherits the data members and behaviors of other classes by extending from them.


#### What is the relationship between a class and an object? 
A class acts as a blue-print that defines the properties, states, and behaviors that are common to a number of objects. An object is an instance of the class. For example, you have a class called _Vehicle_ and _Car_ is the object of that class. You can create any number of objects for the class named _Vehicle_, such as _Van_, _Truck_, and _Auto_.  
      
The _new_ operator is used to create an object of a class. When an object of a class is instantiated, the system allocates memory for every data member that is present in the class.


#### What is an object? 
Objeects are instance of classes. It is a basic unit of a system. An object is an entity that has attributes, behavior, and identity. Attributes and behavior of an object are defined by the class definition.


#### Explain the basic features of OOPs 
The following are the four basic features of OOP:  
    
*   **Abstraction** - Refers to the process of exposing only the relevant and essential data to the users without showing unnecessary information.
*   **Polymorphism** - Allows you to use an entity in multiple forms.
*   **Encapsulation** - Prevents the data from unwanted access by binding of code and data in a single unit called object.
*   **Inheritance** - Promotes the reusability of code and eliminates the use of redundant code. It is the property through which a child class obtains all the features defined in its parent class. When a class inherits the common properties of another class, the class inheriting the properties is called a derived class and the class that allows inheritance of its common properties is called a base class.


#### What is the difference between a class and a structure? 
**Class**:
* A class is a reference type.
* While instantiating a class, CLR allocates memory for its instance in heap.
* Classes support inheritance.
* Variables of a class can be assigned as null.
* Class can contain constructor/destructor.

**Structure**:
* A structure is a value type.
* In structure, memory is allocated on stack.
* Structures do not support inheritance.
* Structure members cannot have null values.
* Structure does not require constructor/destructor and members can be initialiazed automatically.


#### Why is the virtual keyword used in code? 
The `virtual` keyword is used while defining a class to specify that the methods and the properties of that class can be overridden in derived classes.


#### Explain the concept of constructor? 
**Constructor** is a special method of a class, which is called automatically when the instance of a class is created. It is created with the same name as the class and initializes all class members, whenever you access the class. The main features of a constructor are as follows:
* Constructors do not have any return type.
* Constructors can be overloaded.
* It is not mandatory to declare a constructor; it is invoked automatically by .NET Framework.


#### Can you inherit private members of a class? 
No, you cannot inherit `private` members of a class because `private` members are accessible only to that class and not outside that class.


#### What is polymorphism? 
The word polymorphism means having many forms. In object-oriented programming paradigm, polymorphism is often expressed as _one interface, multiple functions_.



## [[⬆]](#toc) <a name=PHP>PHP</a> Interview Questions
#### What is the return type of a function that doesn't return anything? 
`void` which mean nothing.


#### What is the purpose of php.ini file? 
The PHP configuration file, _php.ini_, is the final and most immediate way to affect PHP's functionality. The php.ini file is read each time PHP is initialized.in other words, whenever httpd is restarted for the module version or with each script execution for the CGI version.


#### What does $GLOBALS mean? 
`$GLOBALS` is associative array including references to all variables which are currently defined in the global scope of the script.


#### How can you pass a variable by reference? 
To be able to pass a variable by **reference**, we use an _ampersand_ in front of it, as follows:
```php
$var1 = &$var2
```


#### What is the use of ini_set()? 
PHP allows the user to modify some of its settings mentioned in php.ini using ini_set(). This function requires two string arguments. First one is the name of the setting to be modified and the second one is the new value to be assigned to it.

Given line of code will enable the display_error setting for the script if it’s disabled.

`ini_set('display_errors', '1');`

We need to put the above statement, at the top of the script so that, the setting remains enabled till the end. Also, the values set via ini_set() are applicable, only to the current script. Thereafter, PHP will start using the original values from php.ini.


#### What are the keys & values in an indexed array? 

Consider:
```php
Array ( [0] => Hello [1] => world [2] => It's [3] => a [4] => beautiful [5] => day)
```

The keys of an indexed array are 0, 1, 2 etc. (the index values) and values are "Hello", "world", "It's", "beautiful", "day".


#### What is the difference between == and ===? 
* The operator `==` casts between two different types if they are different
* The `===` operator performs a '_typesafe comparison_'

That means that it will only return true if both operands have the same type and the same value.

```php
1 === 1: true
1 == 1: true
1 === "1": false // 1 is an integer, "1" is a string
1 == "1": true // "1" gets casted to an integer, which is 1
"foo" === "foo": true // both operands are strings and have the same value
```


#### How can you enable error reporting in PHP? 
Check if “`display_errors`” is equal “on” in the php.ini or declare “`ini_set('display_errors', 1)`” in your script.

Then, include “`error_reporting(E_ALL)`” in your code to display all types of error messages during the script execution.


#### What are the main differences between const vs define 
The fundamental difference between `const` vs `define` is that `const` defines constants at compile time, whereas `define` defines them at run time.

```php
const FOO = 'BAR';
define('FOO', 'BAR');

// but
if (...) {
    const FOO = 'BAR';    // Invalid
}
if (...) {
    define('FOO', 'BAR'); // Valid
}
```

Also until PHP 5.3, `const` could not be used in the global scope. You could only use this from within a class. This should be used when you want to set some kind of constant option or setting that pertains to that class. Or maybe you want to create some kind of enum. An example of good `const` usage is to get rid of magic numbers. 

`Define` can be used for the same purpose, but it can only be used in the global scope. It should only be used for global settings that affect the entire application.

Unless you need any type of conditional or expressional definition, use `consts` instead of `define() `- simply for the sake of readability!


#### What are the differences between die() and exit() functions in PHP? 
There's no difference - they are the same. The only advantage of choosing `die()` over `exit()`, might be the time you spare on typing an extra letter.


#### What does the 'var' keyword mean in PHP? 
It's for declaring class member variables in PHP4, and is no longer needed. It will work in PHP5, but will raise an **E_STRICT** warning in PHP from version 5.0.0 up to version 5.1.2, as of when it was deprecated. Since PHP 5.3, var has been un-deprecated and is a synonym for 'public'.

Consider:
```php
class foo {
    var $x = 'y'; // or you can use public like...
    public $x = 'y'; //this is also a class member variables.
    function bar() {
    }
}
```


#### What's the difference between isset() and array_key_exists()?  
* `array_key_exists` will tell you if a key exists in an array and complains when `$a` does not exist.
* `isset` will only return `true` if the key/variable exists **and is not `null`**. `isset` doesn't complain when `$a` does not exist.

Consider:
```js
$a = array('key1' => 'Foo Bar', 'key2' => null);

isset($a['key1']);             // true
array_key_exists('key1', $a);  // true

isset($a['key2']);             // false
array_key_exists('key2', $a);  // true
```


#### What are the different scopes of variables? 
Variable scope is known as its boundary within which it can be visible or accessed from code. In other words, it is the context within which a variable is defined. There are only two scopes available in PHP namely local and global scopes.

- Local variables (local scope)
- Global variables (special global scope)
- Static variables (local scope)
- Function parameters (local scope)
When a variable is accessed outside its scope it will cause PHP error undefined variable.



#### What is the difference between single-quoted and double-quoted strings in PHP? 
* Single quoted strings will display things almost completely "as is." 
* Double quote strings will display a host of escaped characters (including some regexes), and variables in the strings will be evaluated.

Things get evaluated in **double quotes** but not in single:

```php
$s = "dollars";
echo 'This costs a lot of $s.'; // This costs a lot of $s.
echo "This costs a lot of $s."; // This costs a lot of dollars.
```


#### What do we mean by keys and values? 
In associative arrays, we can use named keys that you assign to them.
There are two ways to create an associative array: 

```php
// first way -

$age = array("Peter"=>"35", "Ben"=>"37", "Joe"=>"43");`

// another method - 
$age['Peter'] = "35"; //Peter, Ben & Joe are keys
$age['Ben'] = "37"; //35, 37 & 43 are values
$age['Joe'] = "43";
```


#### PHP array delete by value (not key) 
**Details:**
I have a PHP array as follows:

```php
$messages = [312, 401, 1599, 3, ...];
```

I want to delete the element containing the value `$del_val` (for example, `$del_val=401`), but I don't know its key. This might help: **each value can only be there once**.

I'm looking for the simplest function to perform this task please.


Using `array_search()` and `unset`, try the following:

```js
if (($key = array_search($del_val, $messages)) !== false) {
   unset($messages[$key]);
}
```

`array_search()` returns the key of the element it finds, which can be used to remove that element from the original array using `unset()`. It will return `FALSE` on failure, however it can return a false-y value on success (your key may be `0` for example), which is why the strict comparison `!==` operator is used.

The `if()` statement will check whether `array_search()` returned a value, and will only perform an action if it did.


#### When should I use require vs. include? 
The `require()` function is identical to `include()`, except that it handles errors differently. If an error occurs, the `include()` function generates a warning, but the script will continue execution. The `require()` generates a fatal error, and the script will stop.

My suggestion is to just use `require_once` 99.9% of the time.

Using `require` or `include` instead implies that your code is not **reusable** elsewhere, i.e. that the scripts you're pulling in actually execute code instead of making available a class or some function libraries.


#### What is the difference between var_dump() and print_r()? 
* The `var_dump` function displays structured information about variables/expressions including its **type** and **value**. Arrays are explored recursively with values indented to show structure. It also shows which array values and object properties are references.

* The `print_r()` displays information about a variable in a way that's readable by humans. array values will be presented in a format that shows keys and elements. Similar notation is used for objects.

Consider:
```php
$obj = (object) array('qualitypoint', 'technologies', 'India');
```
`var_dump($obj) `will display below output in the screen:
```
object(stdClass)#1 (3) {
 [0]=> string(12) "qualitypoint"
 [1]=> string(12) "technologies"
 [2]=> string(5) "India"
}
```
And, `print_r($obj)` will display below output in the screen.
```
stdClass Object ( 
 [0] => qualitypoint
 [1] => technologies
 [2] => India
)
```


#### Is there a difference between isset and !empty? 
`empty` is more or less shorthand for` !isset($foo) || !$foo`, and `!empty` is analogous to ` isset($foo) && $foo`.  `empty` is the same as `!$foo`, but doesn't throw warnings if the variable doesn't exist. That's the main point of this function: do a boolean comparison without worrying about the variable being set.


#### Explain what the different PHP errors are 
* A `notice` is a non-critical error saying something went wrong in execution, something minor like an undefined variable.
* A `warning` is given when a more critical error like if an include() command went to retrieve a non-existent file. In both this and the error above, the script would continue.
* A `fatal error` would terminate the code. Failure to satisfy a require() would generate this type of error, for example.


#### Differentiate between echo and print() 
`echo` and `print` are more or less the same. They are both used to output data to the screen.

The differences are: 
- echo has no return value while print has a return value of 1 so it can be used in expressions. 
- echo can take multiple parameters (although such usage is rare) while print can take one argument. 
- echo is faster than print.


#### Give me some real life examples when you had to use __destruct in your classes 
We know that `__destruct` is called when the object is destroyed. Logically, what happens if the object is destroyed? Well, it means it's no longer available. So if it has resources open, it makes sense to close those resources as it's being destroyed or cleaning up after itself. Also because PHP will close resources on termination for you doesn't mean that it's bad to explicitly close them when you no longer need them (or good to not close them).

Some real examples are:
* Closing custom database connector/wrapper connection
* Deletion of temporary folders
* Cleaning up caching
* Spooling the queue of logging messages to db/file



#### Declare some function with default parameter 
Consider:
```php
function showMessage($hello = false){
  echo ($hello) ? 'hello' : 'bye';
}
```


#### What are PSRs? Choose 1 and briefly describe it. 
**PSRs** are PHP Standards Recommendations that aim at standardising common aspects of PHP Development. An example of a PSR is PSR-2, which is a coding style guide.


#### Explain how we handle exceptions in PHP? 
When an exception is thrown, code following the statement will not be executed, and PHP will attempt to find the first matching catch block. If an exception is not caught, a PHP Fatal Error will be issued with an "Uncaught Exception".
An exception can be thrown, and caught within PHP. 

To handle exceptions, code may be surrounded in a `try` block.
Each try must have at least one corresponding `catch` block. Multiple catch blocks can be used to catch different classes of exceptions.
Exceptions can be thrown (or re-thrown) within a catch block.

Consider:

```php
try {
    print "this is our try block n";
    throw new Exception();
} catch (Exception $e) {
    print "something went wrong, caught yah! n";
} finally {
    print "this part is always executed n";
}
```


####  Is multiple inheritance supported in PHP? 
PHP supports only single inheritance; it means that a class can be extended from only one single class using the keyword 'extended'.


#### How is it possible to set an infinite execution time for PHP script? 
The `set_time_limit(0) `added at the beginning of a script sets to infinite the time of execution to not have the PHP error 'maximum execution time exceeded.' It is also possible to specify this in the _php.ini_ file.


#### What is stdClass in PHP? 
`stdClass` is just a generic 'empty' class that's used when casting other types to objects. `stdClass` is **not** the base class for objects in PHP.  This can be demonstrated fairly easily:

```js
class Foo{}
$foo = new Foo();
echo ($foo instanceof stdClass)?'Y':'N'; // outputs 'N'
```

It is useful for anonymous objects, dynamic properties, etc. 

An easy way to consider the `StdClass` is as an alternative to associative array. See this example below that shows how `json_decode()` allows to get an StdClass instance or an associative array.
Also but not shown in this example, `SoapClient::__soapCall` returns an `StdClass` instance.

```js
//Example with StdClass
$json = '{ "foo": "bar", "number": 42 }';
$stdInstance = json_decode($json);

echo $stdInstance - > foo.PHP_EOL; //"bar"
echo $stdInstance - > number.PHP_EOL; //42

//Example with associative array
$array = json_decode($json, true);

echo $array['foo'].PHP_EOL; //"bar"
echo $array['number'].PHP_EOL; //42
```




#### In PHP, objects are they passed by value or by reference? 
In PHP, objects passed by **value**.


#### Explain usage of enumerations in PHP 
PHP doesn't have native Enumerations. Depending upon use case, I would normally use something simple like the following:

```php
abstract class DaysOfWeek
{
    const Sunday = 0;
    const Monday = 1;
    // etc.
}

$today = DaysOfWeek::Sunday;
```

There is a native extension, too. **SplEnum** gives the ability to emulate and create enumeration objects natively in PHP.


#### What is the differences between $a != $b and $a !== $b? 
`!=` means _inequality_ (TRUE if $a is not equal to $b) and `!==` means _non-identity_ (TRUE if $a is not identical to $b).


#### What is PDO in PHP? 
**PDO** stands for PHP Data Object.

It is a set of PHP extensions that provide a core PDO class and database, specific drivers. It provides a vendor-neutral, lightweight, data-access abstraction layer. Thus, no matter what database we use, the function to issue queries and fetch data will be same. It focuses on data access abstraction rather than database abstraction.


#### Can you extend a Final defined class? 
No, you cannot extend a `Final` defined class. A `Final` class or method declaration prevents child class or method overriding.


## [[⬆]](#toc) <a name=PWA>PWA</a> Interview Questions
#### What is a progressive web app? 
The concept of the **progressive web app (PWA)** was approached by Google in late 2015. They are basically web applications (Website) but have look and feel like other native mobile apps. The progressive web app enabled websites can offer functionalities such as working offline, push notifications, and device hardware access.


#### Why do we need a web manifest for PWA? 
A **web manifest **file lists all the information about the website in a JSON format. Having this file is one of the requirements **to make the website installable**.

It usually resides in the root folder of a web app. It contains useful information, such as the app’s title, paths to different-sized icons that can be used to represent the app on a mobile OS (for example, as the home screen icon), and a background color to use in loading or splash screens. This information is needed for the browser to present the web app properly when installing, and on the home screen.


#### What makes an app a PWA? 
There are some key principles a web app should try to observe to be identified as a PWA. It should be:

* **Discoverable**, so the contents can be found through search engines.
* **Installable**, so it's available on the device's home screen.
* **Linkable**, so you can share it by simply sending a URL. 
*** Network independent**, so it works offline or with a poor network connection.
* **Progressive**, so it's still usable on a basic level on older browsers, but fully-functional on the latest ones.
* **Re-engageable**, so it's able to send notifications whenever there's new content available.
* **Responsive**, so it's usable on any device with a screen and a browser — mobile phones, tablets, laptops, TVs, fridges, etc.
* **Safe**, so the connection between you and the app is secured against any third parties trying to get access to your sensitive data.


#### What are some benefits of PWA? 
Benefits of the progressive web app:

1. **Smaller and Faster:**
The progressive web apps are much smaller in size than native apps. They don’t even need to install. That’s they are not wasting disc space and load very fast.
2. **Responsive Interface:**
Progressive web app (PWA) supported web pages are capable to fit in every screen sizes automatically. It could be a smartphone, tablet, desktop or laptop.
3. **No Updates Required:**
Most of the mobile apps need regular weekly updates. Like the normal website, progressive web apps (PWA) are always loaded latest updated version whenever the user interaction happens and no App or Play Store approval required.
4. **Cost Effective:**
Native mobile apps need to be developed for both Android and iOS devices separately and their development cost is very high. On the other hand, progressive web apps are had the same features but the fraction of the prior price.
5. **SEO Advantage:**
Progressive web apps are discoverable by search engines and load super-fast. Just like other websites, their links are sharable too. This, in other words, gives good user experience and result in SEO rank boost.
5. **Offline capabilities:**
Due to the support of service worker API, PWAs are accessible in offline or low internet connections.
6. **Security:**
PWAs are delivered over HTTPS connection and secure user-data over each interaction.
8. **Push Notifications:**
By the support of push notifications, PWAs can interact easily with the users and provide a really amazing user experience.
9. **Bypass the  app stores:**
PWAs don’t need the App store or Google play store support. Their updated version can be directly loaded from the web server without the requirement of app store approval. On the other hand, native apps need days of approval if any new update required. There are possibilities of getting rejected or banned.
10. **Zero installation:**
During browsing, progressive web app gets its own icon on phones and tablets, just like a mobile application, but without the need to go through the tedious and slow App Store installation process.


## [[⬆]](#toc) <a name=PowerShell>PowerShell</a> Interview Questions
#### What is PowerShell? 
**PowerShell** is a task-based command-line shell and scripting language built on .NET. PowerShell helps system administrators and power-users rapidly automate tasks that manage operating systems (Linux, macOS, and Windows) and processes.

The consistency of PowerShell is one of its primary assets. For example, if you learn how to use the `Sort-Object` cmdlet, you can use that knowledge to sort the output of any cmdlet. You don't have to learn the different sorting routines of each cmdlet. PowerShell combines an interactive shell and a scripting environment. PowerShell can access command-line tools, COM objects, and .NET class libraries. PowerShell is based on object not text. The output of a command is an object. You can send the output object, through the pipeline, to another command as its input.


#### What would be the PowerShell equivalent of echo? 
There are several ways:

* `Write-Host`: Write directly to the console, not included in function/cmdlet output. Allows foreground and background colour to be set.
* `Write-Debug`: Write directly to the console, if `$DebugPreference` set to Continue or Stop.
* `Write-Verbose`: Write directly to the console, if `$VerbosePreference` set to Continue or Stop.
* `echo` as an alias mapping to `Write-Output`


#### What is a PowerShell session? 
A **session** is an environment in which PowerShell runs.

Each time you start PowerShell, a session is created for you, and you can run commands in the session. You can also add items to your session, such as modules and snap-ins, and you can create items, such as variables, functions, and aliases. These items exist only in the session and are deleted when the session ends.


#### What is PowerShell execution policies? 
The **PowerShell execution policy** is the setting that determines which type of PowerShell scripts (if any) can be run on the system. PowerShell's execution policy is a safety feature that controls the conditions under which PowerShell loads configuration files and runs scripts.






## [[⬆]](#toc) <a name=Python>Python</a> Interview Questions
#### Name some characteristics of Python?  
Here are a few key points:

*   Python is an **interpreted language**. That means that, unlike languages like C and its variants, Python does not need to be compiled before it is run. Other interpreted languages include _PHP_ and _Ruby_.
*   Python is **dynamically typed**, this means that you don't need to state the types of variables when you declare them or anything like that. You can do things like `x=111` and then `x="I'm a string"` without error
*   Python is well suited to **object orientated programming** in that it allows the definition of classes along with composition and inheritance. Python does not have access specifiers (like C++'s `public`, `private`), the justification for this point is given as "we are all adults here"
*   In Python, **functions are first-class objects**. This means that they can be assigned to variables, returned from other functions and passed into functions. Classes are also first class objects
*   Writing Python code is quick but running it is **often slower than compiled languages**. Fortunately, Python allows the inclusion of C based extensions so bottlenecks can be optimised away and often are. The `numpy` package is a good example of this, it's really quite quick because a lot of the number crunching it does isn't actually done by Python


#### What are the built-in types available In Python? 
**Immutable** built-in datatypes of Python
* Numbers
* Strings
* Tuples

**Mutable** built-in datatypes of Python
* List
* Dictionaries
* Sets


#### How do I modify a string? 
You can’t, because strings are immutable. In most situations, you should simply construct a new string from the various parts you want to assemble it from.


#### Why would you use the "pass" statement? 
Python has the syntactical requirement that code blocks cannot be empty. Empty code blocks are however useful in a variety of different contexts, for example if you are designing a new class with some methods that you don't want to implement:

```python
class MyClass(object):
    def meth_a(self):
        pass

    def meth_b(self):
        print "I'm meth_b"
```
If you were to leave out the pass, the code wouldn't run and you'll get an error:
```python
IndentationError: expected an indented block
```

Other examples when we could use `pass`:
* Ignoring (all or) a certain type of `Exception`
* Deriving an exception class that does not add new behaviour
* Testing that code runs properly for a few test values, without caring about the results


#### What is pickling and unpickling? 
The pickle module implements a fundamental, but powerful algorithm for serializing and de-serializing a Python object structure.

* **Pickling** - is the process whereby a Python object hierarchy is converted into a byte stream,
* **Unpickling** - is the inverse operation, whereby a byte stream is converted back into an object hierarchy.


#### What is negative index in Python? 
Python sequences can be index in positive and negative numbers. For positive index, 0 is the first index, 1 is the second index and so forth. For negative index, (-1) is the last index and (-2) is the second last index and so forth.


#### Name some benefits of Python 
*   Python is a dynamic-typed language. It means that you don’t need to mention the data type of variables during their declaration.
*   Python supports object orientated programming as you can define classes along with the composition and inheritance.
*   Functions in Python are like first-class objects. It suggests you can assign them to variables, return from other methods and pass as arguments.
*   Developing using Python is quick but running it is often slower than compiled languages.
*   Python has several usages like web-based applications, test automation, data modeling, big data analytics and much more.


#### What are local variables and global variables in Python? 
* **Global Variables**: Variables declared outside a function or in global space are called global variables. These variables can be accessed by any function in the program.

* **Local Variables**: Any variable declared inside a function is known as a local variable. This variable is present in the local space and not in the global space.


#### What are the rules for local and global variables in Python? 
In Python, variables that are only referenced inside a function are implicitly global. If a variable is assigned a value anywhere within the function’s body, it’s assumed to be a local unless explicitly declared as global.

Requiring global for assigned variables provides a bar against unintended side-effects.


#### What is lambda functions in Python? 
A **lambda function** is a small anonymous function. A lambda function can take any number of arguments, but can only have one expression.

Consider:
```python
x = lambda a : a + 10
print(x(5)) # Output: 15
```



#### When to use a tuple vs list vs dictionary in Python? 
* Use a `tuple` to store a sequence of items that will not change.
* Use a `list` to store a sequence of items that may change.
* Use a `dictionary` when you want to associate pairs of two items.


#### What are some drawbacks of the Python language? 
The two most common valid answers to this question (by no means intended as an exhaustive list) are:
- The Global Interpreter Lock (GIL). CPython (the most common Python implementation) is not fully thread safe. In order to support multi-threaded Python programs, CPython provides a global lock that must be held by the current thread before it can safely access Python objects. As a result, no matter how many threads or processors are present, only one thread is ever being executed at any given time. In comparison, it is worth noting that the PyPy implementation discussed earlier in this article provides a stackless mode that supports micro-threads for massive concurrency.
- Execution speed. Python can be slower than compiled languages since it is interpreted. (Well, sort of. See our earlier discussion on this topic.)


####  Does Python have a switch-case statement? 
In Python, we do not have a switch-case statement. Here, you may write a switch function to use. Else, you may use a set of if-elif-else statements. To implement a function for this, we may use a dictionary.

```py
def switch_demo(argument):
    switcher = {
        1: "January",
        2: "February",
        3: "March",
        4: "April",
        5: "May",
        6: "June",
        7: "July",
        8: "August",
        9: "September",
        10: "October",
        11: "November",
        12: "December"
    }
    print switcher.get(argument, "Invalid month")
```


#### What is PEP 8? 
PEP 8 is the latest Python coding standard, a set of coding recommendations. It guides to deliver more readable Python code.


#### What Is The Benefit Of Using Flask? 
**Flask** is part of the micro-framework. Which means it will have little to no dependencies on external libraries. It makes the framework light while there is little dependency to update and less security bugs.


#### Suppose lst is [2, 33, 222, 14, 25], What is lst[-1]? 
**Details:**
Suppose `lst` is `[2, 33, 222, 14, 25]`, What is `lst[-1]`?

It's `25`. Negative numbers mean that you count from the right instead of the left. So, `lst[-1]` refers to the last element, `lst[-2]` is the second-last, and so on.


#### Given variables a and b, switch their values so that b has the value of a, and a has the value of b without using an intermediary variable. 
```py
a, b = b, a
```


#### How do you list the functions in a module? 
Use the `dir()` method to list the functions in a module:

```py
import some_module
print dir(some_module)
```


#### What are descriptors? 
Descriptors were introduced to Python way back in version 2.2. They provide the developer with the ability to add managed attributes to objects. The methods needed to create a descriptor are `__get__`, `__set__` and `__delete__`. If you define any of these methods, then you have created a descriptor.

Descriptors power a lot of the magic of Python’s internals. They are what make properties, methods and even the super function work. They are also used to implement the new style classes that were also introduced in Python 2.2.

## [[⬆]](#toc) <a name=React>React</a> Interview Questions
#### What is React? 
React is an open-source JavaScript library created by Facebook for building complex, interactive UIs in web and mobile applications. React’s core purpose is to build UI components; it is often referred to as just the “V” (View) in an “MVC” architecture. 


#### How would you write an inline style in React? 
For example: 

```html
<div style={{ height: 10 }}>
```


#### What is JEST? 
**Jest** is a JavaScript unit testing framework made by Facebook based on Jasmine and provides automated mock creation and a jsdom environment. It's often used for testing React components.


#### What are the advantages of ReactJS? 
Below are the advantages of ReactJS:
1. Increases the application’s performance with Virtual DOM
2. JSX makes code is easy to read and write
3. It renders both on client and server side
4. Easy to integrate with other frameworks (Angular, BackboneJS) since it is only a view library
5. Easy to write UI Test cases and integration with tools such as JEST.


#### How to write comments in ReactJS? 
The comments in ReactJS/JSX is similar to javascript multiline comments which are wrapped with curly braces:

**Single-line comments:**
```js
<div>
  {/* Single-line comments */}
  Welcome {user}, Let's play React
</div>
```

**Multi-line comments:**
```js
<div>
  {/* Multi-line comments for more than
   one line */}
  Welcome {user}, Let's play React
</div>
```


#### What is context? 
**Context** provides a way to pass data through the component tree without having to pass props down manually at every level. For example, authenticated user, locale preference, UI theme need to be accessed in the application by many components.

```js
const {Provider, Consumer} = React.createContext(defaultValue);
```


#### What is virtual DOM? 
**The virtual DOM (VDOM)** is an in-memory representation of Real DOM. The representation of a UI is kept in memory and synced with the “real” DOM. It’s a step that happens between the render function being called and the displaying of elements on the screen. This entire process is called reconciliation.


#### How does React work? 
React creates a virtual DOM. When state changes in a component it firstly runs a "diffing" algorithm, which identifies what has changed in the virtual DOM. The second step is reconciliation, where it updates the DOM with the results of diff.


#### What is the use of refs? 
The **ref** is used to return a reference to the element. They should be avoided in most cases, however, they can be useful when we need direct access to DOM element or an instance of a component.


#### What is props in ReactJS? 
**Props** are inputs to a React component. They are single values or objects containing a set of values that are passed to React Components on creation using a naming convention similar to HTML-tag attributes. i.e, *They are data passed down from a parent component to a child component.*

The primary purpose of props in React is to provide following component functionality:

1. Pass custom data to your React component.
2. Trigger `state` changes.
3. Use via `this.props.reactProp` inside component's `render()` method.

For example, let us create an element with reactProp property,
```js
 <Element reactProp = "1" />
```

This `reactProp` (or whatever you came up with) name then becomes a property attached to React's native props object which originally already exists on all components created using React library.

```js
 props.reactProp;
```


#### What are the major features of ReactJS? 
The major features of ReactJS are as follows,

- It uses **VirtualDOM** instead RealDOM considering that RealDOM manipulations are expensive.
- Supports **server-side rendering**
- Follows **Unidirectional** data flow or data binding
- Uses **reusable/composable** UI components to develop the view


#### What is ReactJS? 
ReactJS is an **open-source frontend JavaScript library** which is used for building user interfaces especifically for single page applications. It is used for handling view layer for web and mobile apps. React was created by Jordan Walke, a software engineer working for Facebook. ReactJS was first deployed on Facebook’s newsfeed in 2011 and on Instagram.com in 2012.


#### What are props in React? 
Props are properties that are passed into a child component from its parent, and are readonly.


#### What is Flux? 
Unidrectional application flow paradigm popular a few years back in React; mostly superceded by Redux these days.


#### How error boundaries handled in React (15)? 
React15 provided very basic support for error boundaries using the method name **unstable_handleError**. Later this has been renamed as **componentDidCatch** starting from React16 beta release.


#### What are the limitations of ReactJS? 
Below are the list of limitations:

1. React is just a view library, not a full-blown framework
2. There is a learning curve for beginners who are new to web development.
3. Integrating React.js into a traditional MVC framework requires some additional configuration
4. The code complexity increases with inline templating and JSX.
5. Too many smaller components leading to over-engineering or boilerplate


#### What’s the difference between an "Element" and a "Component" in React? 
Simply put, a React element describes what you want to see on the screen. Not so simply put, a React element is an object representation of some UI.

A React component is a function or a class which optionally accepts input and returns a React element (typically via JSX which gets transpiled to a createElement invocation).


#### What are stateful components? 
If the behaviour of a component is dependent on the state of the component then it can be termed as _stateful component_. These Stateful components are always class components and have a state that gets initialized in the constructor.

```js
class App extends Component {
 constructor(props) {
  super(props);
  this.state = { count: 0 };
 }

 render() {
    // omitted for brevity
  }
}
```


#### What are stateless components? 
If the behaviour is independent of its state then it can be a _stateless component_. You can use either a function or a class for creating stateless components. But unless you need to use a lifecycle hook in your components, you should go for stateless functional components. There are a lot of benefits if you decide to use stateless functional components here; they are easy to write, understand, and test, and you can avoid the this keyword altogether.


#### What are portals in ReactJS? 
Portal is a recommended way to render children into a DOM node that exists outside the DOM hierarchy of the parent component.

```js
ReactDOM.createPortal(child, container);
```

The first argument (child) is any renderable React child, such as an element, string, or fragment. The second argument (container) is a DOM element.


#### What are fragments? 
It's common pattern in React which is used for a component to return multiple elements. Fragments let you group a list of children without adding extra nodes to the DOM.

```js
render() {
  return (
    <React.Fragment>
      <ChildA />
      <ChildB />
      <ChildC />
    </React.Fragment>
  );
}
```

There is also a shorter syntax which is not supported in many tools

```js
render() {
    return (
      <>
         <ChildA />
         <ChildB />
         <ChildC />
      </>
    );
  }
```


#### Why is it necessary to capitalize the components? 
It is necessary because components are not the DOM element but they are constructors. If they are not capitalized, they can cause various issues and can confuse developers with several elements.


#### What is reconciliation? 
When a component’s props or state change, React decides whether an actual DOM update is necessary by comparing the newly returned element with the previously rendered one. When they are not equal, React will update the DOM. This process is called **reconciliation**.


#### What is the purpose of using super constructor with props argument? 
A child class constructor cannot make use of **this** reference until `super()` method has been called. The same applies for ES6 sub-classes as well. The main reason of passing props parameter to super() call is to access this.props in your child constructors.

**Passing props:**
```js
class MyComponent extends React.Component {
    constructor(props) {
        super(props);
        console.log(this.props);  // Prints { name: 'sudheer',age: 30 }
    }
}
```
**Not passing props:**
```js
class MyComponent extends React.Component {
    constructor(props) {
        super();
        console.log(this.props); // Prints undefined
        // But Props parameter is still available
        console.log(props); // Prints { name: 'sudheer',age: 30 }
    }

    render() {
        // No difference outside constructor
        console.log(this.props) // Prints { name: 'sudheer',age: 30 }
    }
}
```

The above code snippets reveals that this.props behavior is different only with in the constructor. It would be same outside the constructor.


#### When to use a Class Component over a Functional Component? 
If the component need state or lifecycle methods then use class component otherwise use functional component.


#### What are the advantages of using React? 
- It is easy to know how a component is rendered, you just need to look at the render function.
- JSX makes it easy to read the code of your components. It is also really easy to see the layout, or how components are plugged/combined with each other.
- You can render React on the server-side. This enables improves SEO and performance.
- It is easy to test.
- You can use React with any framework (Backbone.js, Angular.js) as it is only a view layer.


#### What are Higher-Order components? 
A higher-order component **(HOC)** is a function that takes a component and returns a new component. Basically, it’s a pattern that is derived from React’s compositional nature
We call them as **“pure’ components”**  because they can accept any dynamically provided child component but they won’t modify or copy any behavior from their input components.
```js
const EnhancedComponent = higherOrderComponent(WrappedComponent);
```
HOC can be used for many use cases as below,

1. Code reuse, logic and bootstrap abstraction
2. Render High jacking
3. State abstraction and manipulation
4. Props manipulation


#### What are controlled components? 
A ReactJS component that controls the input elements within the forms on subsequent user input is called **“Controlled component”**. i.e, every state mutation will have an associated handler function.

For example, to write all the names in uppercase letters, we use handleChange as below,

```js
handleChange(event) {
    this.setState({
        value: event.target.value.toUpperCase()
    });
}
```


#### What is the difference between a Presentational component and a Container component? 
* **Presentational components** are concerned with _how things look_. They generally receive data and callbacks exclusively via props. These components rarely have their own state, but when they do it generally concerns UI state, as opposed to data state.

* **Container components** are more concerned with _how things work_. These components provide the data and behavior to presentational or other container components. They call Flux actions and provide these as callbacks to the presentational components. They are also often stateful as they serve as data sources. 

#### How to create refs? 
**Refs** are created using `React.createRef()` method and attached to React elements via the ref attribute. In order to use refs throughout the component, just assign the ref to the instance property with in constructor.
```js
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.myRef = React.createRef();
  }
  render() {
    return <div ref={this.myRef} />;
  }
}
```
And:
```js
class UserForm extends Component {
  handleSubmit = () => {
    console.log("Input Value is: ", this.input.value)
  }
  render () {
    return (
      <form onSubmit={this.handleSubmit}>
        <input
          type='text'
          ref={(input) => this.input = input} /> // Access DOM input in handle submit
        <button type='submit'>Submit</button>
      </form>
    )
  }
}
```
We can also use it in functional components with the help of closures.


#### What are the differences between a class component and functional component? 
- **Class components** allows you to use additional features such as local state and lifecycle hooks. Also, to enable your component to have direct access to your store and thus holds state.

- When your component just receives props and renders them to the page, this is a **stateless component**, for which a pure function can be used. These are also called dumb components or presentational components.


#### How is React different from AngularJS (1.x)? 
For example, AngularJS (1.x) approaches building an application by extending HTML markup and injecting various constructs (e.g. Directives, Controllers, Services) at runtime. As a result, AngularJS is very opinionated about the greater architecture of your application — these abstractions are certainly useful in some cases, but they come at the cost of flexibility.

By contrast, React focuses exclusively on the creation of components, and has few (if any) opinions about an application’s architecture. This allows a developer an incredible amount of flexibility in choosing the architecture they deem “best” — though it also places the responsibility of choosing (or building) those parts on the developer.


#### What happens during the lifecycle of a React component? 
At the highest level, React components have lifecycle events that fall into three general categories:

1.  Initialization
2.  State/Property Updates
3.  Destruction

<img class="img-fluid" src="https://s3.amazonaws.com/codementor_content/2016-Jul/reactjs-qs1.png">


#### What is the difference between state and props? 
The *state* is a data structure that starts with a default value when a Component mounts. It may be mutated across time, mostly as a result of user events.

*Props* (short for properties) are a Component's configuration. They are received from above and immutable as far as the Component receiving them is concerned. A Component cannot change its props, but it is responsible for putting together the props of its child Components. Props do not have to just be data - callback functions may be passed in as props.


#### What is inline conditional expressions? 
You can use either if statements or ternary expressions which are available from JS to conditionally render expressions. Apart from these approaches, you can also embed any expressions in JSX by wrapping them in curly braces and then followed by JS logical operator(&&).
```js
<h1>Hello!</h1>
   {messages.length > 0 &&
<h2>
    You have {messages.length} unread messages.
</h2>
```


#### How to pass a parameter to an event handler or callback? 
You can use an arrow function to wrap around an event handler and pass parameters:

```js
<button onClick={() => this.handleClick(id)} />
```
This is equivalent to calling .bind as below,
```js
<button onClick={this.handleClick.bind(this, id)} />
```


#### What is the purpose of callback function as an argument of setState? 
The callback function is invoked when `setState` finished and the component gets rendered. Since `setState` is **asynchronous** the callback function is used for any post action.

**Note:** It is recommended to use lifecycle method rather this callback function.
```js
setState({name: 'sudheer'}, () => console.log('The name has updated and component re-rendered'));
```


#### What happens when you call "setState"? 
The first thing React will do when setState is called is merge the object you passed into setState into the current state of the component. This will kick off a process called reconciliation. The end goal of reconciliation is to, in the most efficient way possible, update the UI based on this new state.

To do this, React will construct a new tree of React elements (which you can think of as an object representation of your UI). Once it has this tree, in order to figure out how the UI should change in response to the new state, React will diff this new tree against the previous element tree.

By doing this, React will then know the exact changes which occurred, and by knowing exactly what changes occurred, will able to minimize its footprint on the UI by only making updates where absolutely necessary.


#### What is the difference between state and props? 
Both **props** and **state** are plain JavaScript objects. While both of them hold information that influences the output of render, they are different in their functionality with respect to component. i.e, 
* Props get passed to the component similar to function parameters 
* state is managed within the component similar to variables declared within a function.


#### What is state in ReactJS? 
**State** of a component is an object that holds some information that may change over the lifetime of the component. We should always try to make our state as simple as possible and minimize the number of stateful components.

 Let's create user component with message state,

 ```js
 class User extends React.Component {
    constructor(props) {
       super(props);

       this.state = {
          message: "Welcome to React world",
       }
    }
    render() {
       return (
          <div>
             <h1>{this.state.message}</h1>
          </div>
       );
    }
 }
 ```


#### What are refs used for in React? 
*Refs* are an escape hatch which allow you to get direct access to a DOM element or an instance of a component. In order to use them you add a ref attribute to your component whose value is a callback function which will receive the underlying DOM element or the mounted instance of the component as its first argument.

```js
class UnControlledForm extends Component {
  handleSubmit = () => {
    console.log("Input Value: ", this.input.value)
  }
  render () {
    return (
      <form onSubmit={this.handleSubmit}>
        <input
          type='text'
          ref={(input) => this.input = input} />
        <button type='submit'>Submit</button>
      </form>
    )
  }
}
```
Above notice that our input field has a ref attribute whose value is a function. That function receives the actual DOM element of input which we then put on the instance in order to have access to it inside of the handleSubmit function.

It’s often misconstrued that you need to use a class component in order to use refs, but refs can also be used with functional components by leveraging closures in JavaScript.

```js
function CustomForm ({handleSubmit}) {
  let inputElement
  return (
    <form onSubmit={() => handleSubmit(inputElement.value)}>
      <input
        type='text'
        ref={(input) => inputElement = input} />
      <button type='submit'>Submit</button>
    </form>
  )
}
```


#### When rendering a list what is a key and what is it's purpose? 
*Keys* help React identify which items have changed, are added, or are removed. Keys should be given to the elements inside the array to give the elements a stable identity. The best way to pick a key is to use a string that uniquely identifies a list item among its siblings. 

```js
render () {
  return (
    <ul>
      {this.state.todoItems.map(({task, uid}) => {
        return <li key={uid}>{task}</li>
      })}
    </ul>
  )
}
```

Most often you would use IDs from your data as keys. When you don't have stable IDs for rendered items, you may use the item index as a key as a last resort. It is not recommend to use indexes for keys if the items can reorder, as that would be slow. 


#### How to create components in ReactJS? 
There are two possible ways to create ReactJS Components.

1. **Functional components:** This is the simplest way to create ReactJS components. It accepts props as an Object and returns ReactJS elements. We call it as “functional” because those are pure JavaScript functions.
```js
	function Greeting(props) {
   	   return <h1> Hello, {props.message}</h1> 
	}
```

2. **Class components:** You can also use Es6 class to define component. The above functional component can be written as below,
```js
      class Greeting extends React.Component {
  	    render() {
    		    return <h1>Hello, {this.props.message}</h1>;
  	        }
	    }
```



#### What is the difference between Element and Component? 
An **element** is a plain object describing what you want to appear on the screen in terms of the DOM nodes or other components. Elements can contain other elements in their props. Creating a React element is cheap. Once an element is created, it is never mutated.
The object representation of React element would be as follows,
```js
const element = React.createElement(
  'div',
  {id: 'login-btn'},
  'Login'
)
```
The above createElement returns as object as below,
```js
{
  type: 'div',
  props: {
    children: 'Login',
    id: 'login-btn'
  }
}
```
And finally it renders to the DOM using ReactDOM.render as below,
```js
<div id='login-btn'>Login</div>
```
Whereas a **component** can be declared in several different ways. It can be a class with a render() method. Alternatively, in simple cases, it can be defined as a function. In either case, it takes props as an input, and returns an element tree as the output. JSX transpiled as createElement at the end.
```js
function Button ({ onLogin }) {
  return React.createElement(
    'div',
    {id: 'login-btn', onClick: onLogin},
    'Login'
  )
}
```


#### What is JSX? 
JSX is a syntax notation for **JavaScript XML**(XML-like syntax extension to ECMAScript). It stands for JavaScript XML. It provides expressiveness of JavaScript along with HTML like template syntax. For example, the below text inside h1 tag return as javascript function to the render function,

```js
   render(){
    	return(
         <div>
            <h1> Welcome to React world!!</h1>
         </div>
    	);
     }
```


#### Describe how events are handled in React. 
In order to solve cross browser compatibility issues, your event handlers in React will be passed instances of SyntheticEvent, which is React’s cross-browser wrapper around the browser’s native event. These synthetic events have the same interface as native events you’re used to, except they work identically across all browsers.

What’s mildly interesting is that React doesn’t actually attach events to the child nodes themselves. React will listen to all events at the top level using a single event listener. This is good for performance and it also means that React doesn’t need to worry about keeping track of event listeners when updating the DOM.


#### Where in a React component should you make an AJAX request? 
`componentDidMount` is where an AJAX request should be made in a React component. 

This method will be executed when the component “mounts” (is added to the DOM) for the first time. This method is only executed once during the component’s life. Importantly, you can’t guarantee the AJAX request will have resolved before the component mounts. If it doesn't, that would mean that you’d be trying to setState on an unmounted component, which would not work. Making your AJAX request in `componentDidMount` will guarantee that there’s a component to update.


#### What is the difference between component and container in react Redux? 
**Component** is part of the React API. A Component is a class or function that describes part of a React UI.
**Container** is an informal term for a React component that is connected to a redux store. Containers receive Redux state updates and dispatch actions, and they usually don't render DOM elements; they delegate rendering to presentational child components.


#### Where is the state kept in a React + Redux application? 
In the store.


#### What is the difference between React Native and React? 
* **ReactJS** is a JavaScript library, supporting both front end web and being run on the server, for building user interfaces and web applications.

* **React Native** is a mobile framework that compiles to native app components, allowing you to build native mobile applications (iOS, Android, and Windows) in JavaScript that allows you to use ReactJS to build your components, and implements ReactJS under the hood.


#### How do we pass a property from a parent component props to a child component? 
For example: 
```html
<ChildComponent someProp={props.someProperty} />
```


#### What is the point of Redux? 
Application state management that is easy to reason about, maintain and manage in an asynchronous web application environment.


#### What does it mean for a component to be mounted in React? 
It has a corresponding element created in the DOM and is connected to that.


#### What is Flow? 
**Flow** is a static type checker, designed to find type errors in JavaScript programs, created by Facebook. Flow types can express much more fine-grained distinctions than traditional type systems. For example, Flow helps you catch errors involving null, unlike most type systems.


#### What happens when you call setState? 
The state property is updated in a React component with the object passed into setState, and this is done asynchronously. It tells React that this component and its children need to be re-rendered, but React may not do this immediately (it may batch these state update requests for better performance).


#### What's the difference between a controlled component and an uncontrolled one in React? 
* A controlled component has its state completely driven by React,
* Uncontrolled components can maintain their own internal state. E.g., a textarea's value.


#### How would you prevent a component from rendering in React? 
 Return `null` from the render method.


#### How do you prevent the default behavior in an event callback in React? 
You call `e.preventDefault();` on the event e passed into the callback.
