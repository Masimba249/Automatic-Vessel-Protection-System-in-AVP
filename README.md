# Automatic-Vessel-Protection-System-in-AVP
In this section, our objective is to create an AVP (Autonomous Vehicle Protection) system that comprises a controller specifically designed for interaction with various environments. The controllers possess the ability to detect the monitored variables within the environment, even though they do not possess direct authority over these variables. Instead, their control is limited to the environment that governs these variables. Our project is aimed at implementing pressure reading models and incorporates the use of the critical sensor value to monitor the AVP controller. Furthermore, we have integrated an alarm into the system to activate the escape valve. It is important to emphasize that the activation of the escape valve does not affect the status of the observed reset signal.
D1: Assumption. 
During the implementation of the project, we operated under the following assumptions:
•	By incorporating the alarm into the system, we can trigger the activation of the escape valve. However, it is important to note that this activation will not affect the status of the reset signal.
•	The controllers do not possess direct control over the variables.
D2: Machine Description 
The present research endeavor encompassed the implementation of pressure reading models and the utilization of the critical sensor value to effectively monitor the AVP (Autonomous Vehicle Protection) controller. In addition, the seamless integration of an alarm mechanism within the system served as a catalyst for the activation of the escape valve, thereby fortifying the protective measures. Remarkably, this activation exerted no discernible influence on the prevailing state of the reset signal, thus ensuring its unaltered observance. The holistic scope of this project revolved around the development and deployment of a meticulously crafted framework, meticulously designed to augment both the operational efficacy and the safety protocols governing the AVP system.
D3: The project file was implemented on Promela environment and the files are already uploaded. 

D4: 
Here are some relevant variables that can be considered for such a model:
•	BoatPosition: This variable represents the boat's current spatial coordinates, expressed as either an integer or a coordinate value.
•	TargetPosition: This variable indicates the position of the target or object that requires protection by the boat, typically denoted as an integer or a coordinate value.
•	BoatSpeed: This variable signifies the boat's current velocity, always conveyed as either an integer or a floating-point value.
•	BoatDirection: This variable characterizes the boat's present movement direction, presented as either an angle value or a string denoting a specific cardinal direction (e.g., "north," "south," "east," "west").
•	DistanceToTarget: This variable measures the spatial separation between the boat and the target.
•	CollisionDetected: This variable indicates whether a collision has been detected, represented as a boolean value (true or false).
•	ProtectionSystemActive: This variable denotes the operational status of the protection system, determining whether it is currently active.
•	AlertStatus: This variable reflects the current alert level of the protection system, potentially adopting an enumeration or an integer value that signifies different levels of alerts (e.g., 0 for no alert, 1 for low alert, 2 for high alert).
•	CollisionThreshold: This variable specifies the distance threshold at which an impending collision is considered imminent.
•	SystemStatus: This variable provides an overview of the overall status of the automatic vessel protection system, invariably expressed as an enumeration or an integer value that indicates distinct system states (e.g., 0 for idle, 1 for active, 2 for error).
The aforementioned variables play a crucial role as controlled variables in monitoring the system. Their validity has been verified through the iSpin diagram depicted below: 

D5:
Race conditions emerge within concurrent programs when the program's behavior becomes contingent upon the sequencing and timing of individual instructions or events executed by multiple threads or processes. Moreover, they materialize as a consequence of concurrent operations accessing or modifying shared data, culminating in an indeterminate outcome that hinges on the temporal occurrence of these operations.

In critical systems, race conditions yield significant unfavorable ramifications. These systems necessitate precise and predictable behavior, rendering any unforeseen or unpredictable consequences liable to trigger erroneous system behavior, data corruption, or even catastrophic system failure. Furthermore, race conditions introduce inconspicuous flaws that are arduous to reproduce and diagnose, resulting in erratic system states and potentially undermining system safety, security, and reliability.
