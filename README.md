# StringerCLI

Firebase Remote Config / Crowdin tool for strings translation

Usage:
| `./translate-firebase-strings.sh` | Translate Firebase Remote Config strings |
| `./publish-firebase-config.sh` | Publish a Firebase Remote Config |
| `./translate-xcode-strings.sh` | Translate XCode Strings |
| `./pull-xcode-strings.sh` | Pull XCode Strings |
| `./generate-swift-file.sh` | Generate a Swift Firebase Remote Config model file |
| `./cleanup.sh` | Cleanup |

Before use, at a minimum::
| [StringerHelper](https://github.com/igorleonovich/stringer-helper-cli) | Should be downloaded and configured |
| [Firebase CLI](https://formulae.brew.sh/formula/firebase-cli) & [Crowdin CLI](https://formulae.brew.sh/formula/crowdin) | Should be installed manually or via running `brew bundle` from this project's path and logged in |
| `.firebaserc` | `firebase-project-name` should be changed to Firebase project ID |
| `.env` | `STRINGER_PROJECT_PATH` should be set to the path this project downloaded to<br>`STRINGER_HELPER_PROJECT_PATH` should be set to the path the project downloaded to<br>`STRINGER_HELPER_PROJECT_BUILD_ARCHITECTURE` should be set accordingly to the machine's architecture<br>`XCODE_PROJECT_LOCALIZATIONS_FOLDER_PATH` should be set properly<br>`CROWDIN_ENGINE_ID` should be set |
| `cleanup.sh` | `STRINGER_HELPER_PROJECT_PATH` should be changed to Stringer Helper project path |
| `copy-xcode-strings.sh` | Language list should be set accordingly (e.g. `pt-PT:pt-PT.lproj` etc.) |
| languages.json | Language list should be set accordingly (e.g. `pt-PT:pt-PT.lproj` etc.) |
| `translate-xcode-strings.yml` | `project_id` and `api_token` should be obtained from Crowdin and set here |
| `pull-xcode-strings.yml` | `project_id` and `api_token` should be obtained from Crowdin and set here<br>`languages_mapping`: Languages with custom path should me mapped here |
| `translate-firebase-remote-config-strings.yml` | `project_id` and `api_token` should be obtained from Crowdin and set here<br>`languages_mapping`: Languages with custom path should me mapped here |
