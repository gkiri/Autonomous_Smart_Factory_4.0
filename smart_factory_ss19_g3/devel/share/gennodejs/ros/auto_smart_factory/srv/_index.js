
"use strict";

let ChargingPathsRequest = require('./ChargingPathsRequest.js')
let InitTaskPlanner = require('./InitTaskPlanner.js')
let GetStorageState = require('./GetStorageState.js')
let InitPathPlanner = require('./InitPathPlanner.js')
let inputRequest = require('./inputRequest.js')
let GetWarehouseConfig = require('./GetWarehouseConfig.js')
let bestGoal = require('./bestGoal.js')
let triggerRoadmapGenerator = require('./triggerRoadmapGenerator.js')
let StorePackage = require('./StorePackage.js')
let SetConveyorSpeed = require('./SetConveyorSpeed.js')
let AssignChargingTask = require('./AssignChargingTask.js')
let PackageLoadUnload = require('./PackageLoadUnload.js')
let NewPackageInput = require('./NewPackageInput.js')
let InitChargingManagement = require('./InitChargingManagement.js')
let RegisterAgent = require('./RegisterAgent.js')
let GetPackageConfigurations = require('./GetPackageConfigurations.js')
let RotateTable = require('./RotateTable.js')
let MoveGripper = require('./MoveGripper.js')
let localPath = require('./localPath.js')
let CalculateETA = require('./CalculateETA.js')
let ReserveStorageTray = require('./ReserveStorageTray.js')
let InitStorageManagement = require('./InitStorageManagement.js')
let testService = require('./testService.js')
let GetTrayState = require('./GetTrayState.js')
let SetPackage = require('./SetPackage.js')
let InitPackageGenerator = require('./InitPackageGenerator.js')
let GetLocalPath = require('./GetLocalPath.js')
let GetRobotConfigurations = require('./GetRobotConfigurations.js')
let RetrievePackage = require('./RetrievePackage.js')
let PerformTaskTest = require('./PerformTaskTest.js')
let outputRequest = require('./outputRequest.js')
let GetFreeChargingStations = require('./GetFreeChargingStations.js')
let GetPackage = require('./GetPackage.js')
let NewPackageOutput = require('./NewPackageOutput.js')
let AssignTask = require('./AssignTask.js')
let InitAgent = require('./InitAgent.js')
let RegisterAgentCharging = require('./RegisterAgentCharging.js')
let RequestNewPath = require('./RequestNewPath.js')
let initRoadmapPlanner = require('./initRoadmapPlanner.js')
let shortestPath = require('./shortestPath.js')
let NewPackageGenerator = require('./NewPackageGenerator.js')
let StorePackageAgent = require('./StorePackageAgent.js')
let MovePackage = require('./MovePackage.js')

module.exports = {
  ChargingPathsRequest: ChargingPathsRequest,
  InitTaskPlanner: InitTaskPlanner,
  GetStorageState: GetStorageState,
  InitPathPlanner: InitPathPlanner,
  inputRequest: inputRequest,
  GetWarehouseConfig: GetWarehouseConfig,
  bestGoal: bestGoal,
  triggerRoadmapGenerator: triggerRoadmapGenerator,
  StorePackage: StorePackage,
  SetConveyorSpeed: SetConveyorSpeed,
  AssignChargingTask: AssignChargingTask,
  PackageLoadUnload: PackageLoadUnload,
  NewPackageInput: NewPackageInput,
  InitChargingManagement: InitChargingManagement,
  RegisterAgent: RegisterAgent,
  GetPackageConfigurations: GetPackageConfigurations,
  RotateTable: RotateTable,
  MoveGripper: MoveGripper,
  localPath: localPath,
  CalculateETA: CalculateETA,
  ReserveStorageTray: ReserveStorageTray,
  InitStorageManagement: InitStorageManagement,
  testService: testService,
  GetTrayState: GetTrayState,
  SetPackage: SetPackage,
  InitPackageGenerator: InitPackageGenerator,
  GetLocalPath: GetLocalPath,
  GetRobotConfigurations: GetRobotConfigurations,
  RetrievePackage: RetrievePackage,
  PerformTaskTest: PerformTaskTest,
  outputRequest: outputRequest,
  GetFreeChargingStations: GetFreeChargingStations,
  GetPackage: GetPackage,
  NewPackageOutput: NewPackageOutput,
  AssignTask: AssignTask,
  InitAgent: InitAgent,
  RegisterAgentCharging: RegisterAgentCharging,
  RequestNewPath: RequestNewPath,
  initRoadmapPlanner: initRoadmapPlanner,
  shortestPath: shortestPath,
  NewPackageGenerator: NewPackageGenerator,
  StorePackageAgent: StorePackageAgent,
  MovePackage: MovePackage,
};
