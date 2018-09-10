These tests are for the ROS Callout API.
They depend on the tests in PRRosCalloutTest.
The only place that a direct OSProcess call is done is in testPeek, needed for bootstrapping. All the rest of the tests are only in function of the API itself.
