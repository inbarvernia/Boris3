A program that emulates docking stations for TFL bikes as well as its infrastructure.

7. back to the Feature
- [x] Start irb (or any other REPL) from the Command Line
- [x] Use require to include the file that contains the DockingStation class definition
- [x] Set a variable docking_station equal to a new DockingStation object
- [x] Explain to your pair partner why you do not see an error now, when you did before
  - *Defined a new DockingStation class which created an instance variable*
- [x] Ask the docking_station instance to release_bike
- [x] Explain to your pair partner what the resulting error means.
    - *No defined method for release_bike*

  DONE

8. Back to the Unit
- [x] Add a test to your spec file that expects DockingStation instances to respond_to the method release_bike
- [x] Rewrite this test using RSpec's one-liner syntax
- [x] Run RSpec from the Command Line
- [x] Explain the error to your pair partner
  - *No defined method for release_bike*
- [x] Add a method release_bike to the DockingStation class
- [x] Run RSpec from the Command Line
- [x] Explain to your pair partner the difference between what you see, and the error you saw before.
  *Method release_bike now exists, the test passes*

  DONE

  9. Building a bike
- [x] Start irb (or another REPL such as 💊 Pry)
- [x] Instantiate a DockingStation as docking_station
- [x] Ask docking_station to release a bike, and save the response to a variable bike
- [x] Ask the bike if it is working?
- [x] Explain the error to your pair partner
  - *unable to find method .working?, no Bike class*
- [x] Create a new spec file for a Bike class
- [x] Set up the spec file to describe the Bike class
- [x] Run RSpec from the Command Line
- [x] Fix the error you see, similarly to how you fixed the same error for DockingStation
- [x] Add a test to your bike_spec.rb file that expects Bike instances to respond_to the method working?
- [x] Make this test pass.

DONE

10. Making Docking Stations Release Bikes
- [x] Feature-test the feature you are building using irb
- [x] Explain the error to your pair partner
  - *trying to use a class method on something that isn't an instance of the same class*
  - *bike isn't an instance of Bike class, as we haven't required bike.rb*
- [x] Add a test to your DockingStation specification that a) gets a bike, and then b) expects the bike to be working
- [x] Make this test pass
- [x] Feature-test the feature again.

DONE

11. Using Instance Variables
 - [x] Write a feature test for docking a bike at a docking station
 - [x] Write a unit test for the method you need to add to DockingStation to make docking possible
 - [x] Pass both tests
 - [ ] Use an instance variable with attr_reader to do a full test-implementation cycle for the second User Story above