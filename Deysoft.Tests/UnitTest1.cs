﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Domain;
using Domain.Model;
using Domain.Repositories;

namespace Deysoft.Tests
{
  /// <summary>
  /// Summary description for UnitTest1
  /// </summary>
  [TestClass]
  
  public class UnitTest1
  {
    public UnitTest1()
    {
      //
      // TODO: Add constructor logic here
      //
    }

    private TestContext testContextInstance;

    /// <summary>
    ///Gets or sets the test context which provides
    ///information about and functionality for the current test run.
    ///</summary>
    public TestContext TestContext
    {
      get
      {
        return testContextInstance;
      }
      set
      {
        testContextInstance = value;
      }
    }

    #region Additional test attributes
    //
    // You can use the following additional attributes as you write your tests:
    //
    // Use ClassInitialize to run code before running the first test in the class
    // [ClassInitialize()]
    // public static void MyClassInitialize(TestContext testContext) { }
    //
    // Use ClassCleanup to run code after all tests in a class have run
    // [ClassCleanup()]
    // public static void MyClassCleanup() { }
    //
    // Use TestInitialize to run code before running each test 
    // [TestInitialize()]
    // public void MyTestInitialize() { }
    //
    // Use TestCleanup to run code after each test has run
    // [TestCleanup()]
    // public void MyTestCleanup() { }
    //
    #endregion

    [TestMethod]
    public void CanCreateUser()
    {
      IRepository<User> repo = new UserRepository();
      User User = new User();
      User.Username = "ERosario";
      User.Name = "Ezequiel";
      User.Lastname = "Rosario";
      User.Email = "ezequiel189@hotmail.com";                    
      User.Password = Infraestructure.DataHandle.Hash.SHA256("erosario");                 
      User.PasswordQuestion = "";         
      User.PasswordAnswer ="";
      User.LastLoginDate = DateTime.Now;
      User.LastPasswordChangeDate = DateTime.Now;
      User.CreationDate = DateTime.Now;
      User.IsOnLine =  false;                
      User.IsLockedOut = false;             
      User.PasswordAttemptsCount = 0;     
      User.PasswordAnswerAttemptsCount = 0;

      repo.Save(User);

    }

    [TestMethod]
    public void CanValidateUser()
    {

        using (var service = new Service.UserService())
        {
          string username = "Djavier";
          string password = "javier";
          Assert.IsTrue(service.ValidateUser(username, password));
        }
      
      
    }


    [TestMethod]
    public void CanChangePassword()
    {
      using (var service = new Service.UserService())
      {
        string username = "Djavier";
        string oldPassword = "djavier";
        string newPassword = "javier";

        Assert.IsTrue(service.ChangePassword(username, oldPassword, newPassword));
      }
    }

    [TestMethod]
    public void CanCreateLocationType()
    {
      try
      {
        using (var service = new Service.LocationService())
        {
          string username = "Djavier";
          string description = "Caja";

          service.CreateLocationType(username, description);
        }
      }
      catch (Exception e)
      {
        Assert.Fail(e.Message + e.InnerException.Message);
      }
    }

    [TestMethod]
    public void CanGetLocationType()
    {
      IRepository<LocationType> repo = new LocationTypeRepository();

      LocationType locType = repo.GetById(Guid.Parse("14B1E9DD-2F41-4BDB-9AFC-6AA21F63E755"));
      Assert.IsNotNull(locType);
        
    }

    [TestMethod]
    public void CanUpdateLocationType()
    {
      try
      {
        using (var service = new Service.LocationService())
        {
          string username = "Djavier";
          string description = "Cajon";
          string id = "4256C6B2-EE95-4C20-9F3A-C39B3A50C2F0";

          service.UpdateLocationType(username, id, description);
        }
      }
      catch (Exception e)
      {
        Assert.Fail(e.Message + e.InnerException.Message);
      }
    }
  }
}
