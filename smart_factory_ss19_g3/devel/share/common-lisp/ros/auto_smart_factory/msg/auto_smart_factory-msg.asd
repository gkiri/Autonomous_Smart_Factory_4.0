
(cl:in-package :asdf)

(defsystem "auto_smart_factory-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "AdditionalTime" :depends-on ("_package_AdditionalTime"))
    (:file "_package_AdditionalTime" :depends-on ("_package"))
    (:file "CollisionAction" :depends-on ("_package_CollisionAction"))
    (:file "_package_CollisionAction" :depends-on ("_package"))
    (:file "GripperState" :depends-on ("_package_GripperState"))
    (:file "_package_GripperState" :depends-on ("_package"))
    (:file "IdlePosition" :depends-on ("_package_IdlePosition"))
    (:file "_package_IdlePosition" :depends-on ("_package"))
    (:file "Package" :depends-on ("_package_Package"))
    (:file "_package_Package" :depends-on ("_package"))
    (:file "PackageConfiguration" :depends-on ("_package_PackageConfiguration"))
    (:file "_package_PackageConfiguration" :depends-on ("_package"))
    (:file "PackagePool" :depends-on ("_package_PackagePool"))
    (:file "_package_PackagePool" :depends-on ("_package"))
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "PerformTask" :depends-on ("_package_PerformTask"))
    (:file "_package_PerformTask" :depends-on ("_package"))
    (:file "PlannedPath" :depends-on ("_package_PlannedPath"))
    (:file "_package_PlannedPath" :depends-on ("_package"))
    (:file "RequestStatus" :depends-on ("_package_RequestStatus"))
    (:file "_package_RequestStatus" :depends-on ("_package"))
    (:file "RoadmapGraph" :depends-on ("_package_RoadmapGraph"))
    (:file "_package_RoadmapGraph" :depends-on ("_package"))
    (:file "Robot" :depends-on ("_package_Robot"))
    (:file "_package_Robot" :depends-on ("_package"))
    (:file "RobotConfiguration" :depends-on ("_package_RobotConfiguration"))
    (:file "_package_RobotConfiguration" :depends-on ("_package"))
    (:file "RobotHeartbeat" :depends-on ("_package_RobotHeartbeat"))
    (:file "_package_RobotHeartbeat" :depends-on ("_package"))
    (:file "RobotJourney" :depends-on ("_package_RobotJourney"))
    (:file "_package_RobotJourney" :depends-on ("_package"))
    (:file "StorageState" :depends-on ("_package_StorageState"))
    (:file "_package_StorageState" :depends-on ("_package"))
    (:file "StorageUpdate" :depends-on ("_package_StorageUpdate"))
    (:file "_package_StorageUpdate" :depends-on ("_package"))
    (:file "TakeTask" :depends-on ("_package_TakeTask"))
    (:file "_package_TakeTask" :depends-on ("_package"))
    (:file "TaskAnnouncement" :depends-on ("_package_TaskAnnouncement"))
    (:file "_package_TaskAnnouncement" :depends-on ("_package"))
    (:file "TaskPlannerState" :depends-on ("_package_TaskPlannerState"))
    (:file "_package_TaskPlannerState" :depends-on ("_package"))
    (:file "TaskRating" :depends-on ("_package_TaskRating"))
    (:file "_package_TaskRating" :depends-on ("_package"))
    (:file "TaskStarted" :depends-on ("_package_TaskStarted"))
    (:file "_package_TaskStarted" :depends-on ("_package"))
    (:file "TaskState" :depends-on ("_package_TaskState"))
    (:file "_package_TaskState" :depends-on ("_package"))
    (:file "Tray" :depends-on ("_package_Tray"))
    (:file "_package_Tray" :depends-on ("_package"))
    (:file "TrayGeometry" :depends-on ("_package_TrayGeometry"))
    (:file "_package_TrayGeometry" :depends-on ("_package"))
    (:file "TraySensor" :depends-on ("_package_TraySensor"))
    (:file "_package_TraySensor" :depends-on ("_package"))
    (:file "TrayState" :depends-on ("_package_TrayState"))
    (:file "_package_TrayState" :depends-on ("_package"))
    (:file "Wall" :depends-on ("_package_Wall"))
    (:file "_package_Wall" :depends-on ("_package"))
    (:file "WallGeometry" :depends-on ("_package_WallGeometry"))
    (:file "_package_WallGeometry" :depends-on ("_package"))
    (:file "WarehouseConfiguration" :depends-on ("_package_WarehouseConfiguration"))
    (:file "_package_WarehouseConfiguration" :depends-on ("_package"))
  ))