import Danger
import DangerSwiftCoverage
import DangerXCodeSummary

let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \n \(editedFiles.joined(separator: ", \n"))")

DangerSwiftCoverage.Coverage.xcodeBuildCoverage(
    .xcresultBundle("/Users/alibutt/Library/Developer/Xcode/DerivedData/TFApp-gjboaobkcpcfylhktbanwnlntfqv/Logs/Test/Test-TFApp-2022.08.12_14-53-58-+0200.xcresult"),
    minimumCoverage: 50,
    excludedTargets: [""],
    hideProjectCoverage: false
)
