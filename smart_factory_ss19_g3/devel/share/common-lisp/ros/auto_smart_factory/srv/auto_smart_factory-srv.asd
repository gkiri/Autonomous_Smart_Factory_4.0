
(cl:in-package :asdf)

(defsystem "auto_smart_factory-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :auto_smart_factory-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AssignChargingTask" :depends-on ("_package_AssignChargingTask"))
    (:file "_package_AssignChargingTask" :depends-on ("_package"))
    (:file "AssignTask" :depends-on ("_package_AssignTask"))
    (:file "_package_AssignTask" :depends-on ("_package"))
    (:file "CalculateETA" :depends-on ("_package_CalculateETA"))
    (:file "_package_CalculateETA" :depends-on ("_package"))
    (:file "ChargingPathsRequest" :depends-on ("_package_ChargingPathsRequest"))
    (:file "_package_ChargingPathsRequest" :depends-on ("_package"))
    (:file "GetFreeChargingStations" :depends-on ("_package_GetFreeChargingStations"))
    (:file "_package_GetFreeChargingStations" :depends-on ("_package"))
    (:file "GetLocalPath" :depends-on ("_package_GetLocalPath"))
    (:file "_package_GetLocalPath" :depends-on ("_package"))
    (:file "GetPackage" :depends-on ("_package_GetPackage"))
    (:file "_package_GetPackage" :depends-on ("_package"))
    (:file "GetPackageConfigurations" :depends-on ("_package_GetPackageConfigurations"))
    (:file "_package_GetPackageConfigurations" :depends-on ("_package"))
    (:file "GetRobotConfigurations" :depends-on ("_package_GetRobotConfigurations"))
    (:file "_package_GetRobotConfigurations" :depends-on ("_package"))
    (:file "GetStorageState" :depends-on ("_package_GetStorageState"))
    (:file "_package_GetStorageState" :depends-on ("_package"))
    (:file "GetTrayState" :depends-on ("_package_GetTrayState"))
    (:file "_package_GetTrayState" :depends-on ("_package"))
    (:file "GetWarehouseConfig" :depends-on ("_package_GetWarehouseConfig"))
    (:file "_package_GetWarehouseConfig" :depends-on ("_package"))
    (:file "InitAgent" :depends-on ("_package_InitAgent"))
    (:file "_package_InitAgent" :depends-on ("_package"))
    (:file "InitChargingManagement" :depends-on ("_package_InitChargingManagement"))
    (:file "_package_InitChargingManagement" :depends-on ("_package"))
    (:file "InitPackageGenerator" :depends-on ("_package_InitPackageGenerator"))
    (:file "_package_InitPackageGenerator" :depends-on ("_package"))
    (:file "InitPathPlanner" :depends-on ("_package_InitPathPlanner"))
    (:file "_package_InitPathPlanner" :depends-on ("_package"))
    (:file "InitStorageManagement" :depends-on ("_package_InitStorageManagement"))
    (:file "_package_InitStorageManagement" :depends-on ("_package"))
    (:file "InitTaskPlanner" :depends-on ("_package_InitTaskPlanner"))
    (:file "_package_InitTaskPlanner" :depends-on ("_package"))
    (:file "MoveGripper" :depends-on ("_package_MoveGripper"))
    (:file "_package_MoveGripper" :depends-on ("_package"))
    (:file "MovePackage" :depends-on ("_package_MovePackage"))
    (:file "_package_MovePackage" :depends-on ("_package"))
    (:file "NewPackageGenerator" :depends-on ("_package_NewPackageGenerator"))
    (:file "_package_NewPackageGenerator" :depends-on ("_package"))
    (:file "NewPackageInput" :depends-on ("_package_NewPackageInput"))
    (:file "_package_NewPackageInput" :depends-on ("_package"))
    (:file "NewPackageOutput" :depends-on ("_package_NewPackageOutput"))
    (:file "_package_NewPackageOutput" :depends-on ("_package"))
    (:file "PackageLoadUnload" :depends-on ("_package_PackageLoadUnload"))
    (:file "_package_PackageLoadUnload" :depends-on ("_package"))
    (:file "PerformTaskTest" :depends-on ("_package_PerformTaskTest"))
    (:file "_package_PerformTaskTest" :depends-on ("_package"))
    (:file "RegisterAgent" :depends-on ("_package_RegisterAgent"))
    (:file "_package_RegisterAgent" :depends-on ("_package"))
    (:file "RegisterAgentCharging" :depends-on ("_package_RegisterAgentCharging"))
    (:file "_package_RegisterAgentCharging" :depends-on ("_package"))
    (:file "RequestNewPath" :depends-on ("_package_RequestNewPath"))
    (:file "_package_RequestNewPath" :depends-on ("_package"))
    (:file "ReserveStorageTray" :depends-on ("_package_ReserveStorageTray"))
    (:file "_package_ReserveStorageTray" :depends-on ("_package"))
    (:file "RetrievePackage" :depends-on ("_package_RetrievePackage"))
    (:file "_package_RetrievePackage" :depends-on ("_package"))
    (:file "RotateTable" :depends-on ("_package_RotateTable"))
    (:file "_package_RotateTable" :depends-on ("_package"))
    (:file "SetConveyorSpeed" :depends-on ("_package_SetConveyorSpeed"))
    (:file "_package_SetConveyorSpeed" :depends-on ("_package"))
    (:file "SetPackage" :depends-on ("_package_SetPackage"))
    (:file "_package_SetPackage" :depends-on ("_package"))
    (:file "StorePackage" :depends-on ("_package_StorePackage"))
    (:file "_package_StorePackage" :depends-on ("_package"))
    (:file "StorePackageAgent" :depends-on ("_package_StorePackageAgent"))
    (:file "_package_StorePackageAgent" :depends-on ("_package"))
    (:file "bestGoal" :depends-on ("_package_bestGoal"))
    (:file "_package_bestGoal" :depends-on ("_package"))
    (:file "initRoadmapPlanner" :depends-on ("_package_initRoadmapPlanner"))
    (:file "_package_initRoadmapPlanner" :depends-on ("_package"))
    (:file "inputRequest" :depends-on ("_package_inputRequest"))
    (:file "_package_inputRequest" :depends-on ("_package"))
    (:file "localPath" :depends-on ("_package_localPath"))
    (:file "_package_localPath" :depends-on ("_package"))
    (:file "outputRequest" :depends-on ("_package_outputRequest"))
    (:file "_package_outputRequest" :depends-on ("_package"))
    (:file "shortestPath" :depends-on ("_package_shortestPath"))
    (:file "_package_shortestPath" :depends-on ("_package"))
    (:file "testService" :depends-on ("_package_testService"))
    (:file "_package_testService" :depends-on ("_package"))
    (:file "triggerRoadmapGenerator" :depends-on ("_package_triggerRoadmapGenerator"))
    (:file "_package_triggerRoadmapGenerator" :depends-on ("_package"))
  ))