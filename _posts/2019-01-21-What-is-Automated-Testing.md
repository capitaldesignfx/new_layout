---
author: ed
---

*This is the first in a series of posts on **automated software testing**.  This series aims to explain what automated testing is, what it can and cannot do, and the effort and work required to build and maintain an effective automated testing strategy.  This first post is an introduction to automated testing and is geared towards those that are completely new to the subject.*

## Manual vs. Automated Testing

From numerical computing libraries to web applications, testing needs to be done to check that the software works as intended.  A straightforward way to test software is to use the software as a user would; for example, in the case of an online store, logging into the application, searching for items, adding them to the shopping cart, and placing the order.  This manual approach to testing can give you high confidence that your software works as desired, because, well, you've just used the software!

This raises the question of what needs to be tested whenever the software is updated - using the same online store example, there's almost an infinite number of paths through the store that a user could take.  It seems logical that the testing should be focused on the particular software update - if only the login page was updated, it would make sense to only test the login page.  If the software update is more general and affects the whole application, perhaps the most common features of the application should be tested.  As you can imagine, manually testing software can take up a considerable amount of time not only performing the actual tests, but also with communicating the changes in each software update from software developers to testers, organizing and defining common features to be tested, and keeping track of what has already been and has yet to be tested.  Additionally, sometimes changes to software may have unintended side effects that affect other seemingly unrelated parts, and thus may introduce bugs that slip through the cracks.

*Automated testing* is a broad term that covers a variety of different methods of testing software, but it generally refers to having additional code that tests your software to validate intended behavior.  This additional test code could range from being a simple function in the same programming language as your software, to more sophisticated test frameworks that launch a browser and simulate clicking through the application as a user would.  A high-level overview of some of the different testing categories will be discussed in the next section.  However, some advantages of automated software testing should be apparent - automated tests could be written for the most commonly used software features, and then could be automatically run on every software update.  All tests could be run for even for seemingly small changes with little effort, which could help catch bugs resulting from changes with unintended side effects.

Automated testing does come with costs though - automated tests need to be written and maintained by developers, and there is an initial set up cost with setting up an automated testing platform.  If the behavior of the software is changed in the future, some tests may need to be updated to test the new behavior instead of the old.  Additionally, since automated tests are essentially code, there could possibly be bugs with the tests themselves and thus could give misleading results such as false positives (tests that say the software works as intended, but is actually broken).  However, with automated tests in place, there is no longer a separation between developers and testers - developers become responsible for maintaining existing tests as well as writing new tests for new features, and testers can review and write automated tests (there are various testing tools that cater to people with different levels of coding experience).  This can be viewed as a positive thing, since each automated test documents the intended behavior of the software, breaks down any barriers between developers and testers, and has everyone understanding the software more clearly.

Automated tests can be great for regression testing - testing that existing features of the software still work properly after each update.  Testers are freed from having to maintain long and complex spreadsheets with test scenarios, and instead can spend more time doing exploratory testing and poking around the software with different ideas.  Therefore, both manual and automated testing are complementary and can be very effective when used together.

## Types of Testing

This section briefly describes different categories of tests.  Although these are commonly used terms, they do not have strict, precise definitions, and may overlap with each other depending on the software application.  I'll aim to provide the most salient points commonly associated with each term.  These terms normally imply automated testing, although they can also be used to refer to manual testing.

### Unit

Unit tests typically test software at the source code level by running isolated parts of the code at a time.  Each unit test normally tests a single, focused piece of logic, and are usually characterized by running fairly quickly (from milliseconds to several seconds).  These tests are extremely beneficial to developers actively working on the source code, since they can get immediate, real-time feedback as they work on the software.   Going back to the online store example, suppose that there is some code responsible for sorting a list of retail stores by closest distance to the user.  A unit test would run this distance-sorting code with a known set of unordered inputs, and expect that the code returns the list in sorted order.  

### Integration

Many software applications have different moving parts - an online store may store its catalog and orders in a database, and may communicate with external services to handle online payments.  Integration tests focus on testing the interactions between each of the different components.  As multiple components are involved in integration tests, these tests may take longer to set up and run than unit tests.

### UI (User Interface)

UI tests focus on testing software with a graphical user interace (GUI).  These tests would launch the application and navigate through it similar to how a user would by clicking and entering input through the keyboard.  There are tools that allow testers to record a sequence of actions through the application.  The recording can then be replayed later automatically every time there is a code change.  This allows tests to be generated without writing code.  UI tests generally take longer to run due to having to set up and run a process to mimic a real user.

### End-to-end (E2E)

E2E tests refer to tests that go through a full, real-life application use-case from start to finish.  These tests usually run on systems that are close to an identical copy of the real, live system (*production*).  UI tests sometimes can cover all of E2E testing, but some applications may have processes that run some type of batch processing overnight before letting the user proceed with further actions.  In these cases, E2E would involve testing both the GUI and the nightly batch processing together, for example.

### Performance/Load/Stress

Performance/load/stress tests aim to measure how the software performs different amounts of load.  These tests can involve simulating large number of users using the app, running the app on varying levels of hardware, and dynamically adding/removing servers, all while measuring various metrics such as response time and error rates.

## Summary

Automated tests can help ensure better software quality by translating tedious, repeatable tests into code.  It fosters better communication between developers and testers, and leads to a clearer understanding of the software by everyone.  However, it involves an initial setup cost and requires thoughtful maintenance by everyone involved with the software.  There are different categories of testing, including unit, integration, UI, E2E, and performance/load/stress testing.

The following posts in this automated testing series will go through the different types of testing using examples of commonly used testing tools and frameworks.  While there are many different types of testing available, planning out a good mixture of these tests to ensure a robust coverage of the entire software application will vary from project to project.  If you're interested in learning more and possibly introducing automated tests in your software development process, we'd love to chat!  Feel free to leave us a message using the contact form below, or email us at info@techorrect.com.
