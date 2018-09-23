
# react-native-satismeter


## Getting started

`$ npm install react-native-satismeter --save`

### Mostly automatic installation

`$ react-native link react-native-satismeter`

### Remember to link iOS bundle 
Link the bundle iOS file by adding it in the copy bundle section, search
node_modules/react-native-satismeter/ios/*.bundle and add it.

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-satismeter` and add `RNSatismeter.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSatismeter.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.jamesjara.rnsatismeter.RNSatismeterPackage;` to the imports at the top of the file
  - Add `new RNSatismeterPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-satismeter'
  	project(':react-native-satismeter').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-satismeter/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-satismeter')
  	```


## Usage
```javascript
import RNSatismeter from 'react-native-satismeter';

RNSatismeter.setKey("your-api-key")
RNSatismeter.setUserId("your-user-id")
RNSatismeter.setUserTraits({
  date: "01-01-1990",
  color: "red",
  foo: "bar"
})

// Bool to force the survey
RNSatismeter.run(false)

```  
