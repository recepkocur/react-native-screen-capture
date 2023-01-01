import React, { PureComponent } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, } from 'react-native';
import { disallowScreenshot, keepAwake } from 'react-native-screen-capture';

export default class App extends PureComponent {
   state = {
      disallowScreenshot: true,
      keepAwake: true,
   };
   componentDidMount() {
      disallowScreenshot(this.state.disallowScreenshot)
      keepAwake(this.state.keepAwake)
   }
   render() {
      return (
         <View style={styles.container}>
            <TouchableOpacity onPress={() => {
               this.setState({
                  disallowScreenshot: !this.state.disallowScreenshot
               }, () => {
                  disallowScreenshot(this.state.disallowScreenshot)
               })
            }} style={{ padding: 15, backgroundColor: this.state.disallowScreenshot ? '#5BE55B' : '#FF6666', margin: 15 }}>
               <Text>Disallow screenshot {!this.state.disallowScreenshot ? 'OFF' : 'ON'}</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => {
               this.setState({
                  keepAwake: !this.state.keepAwake
               }, () => {
                  keepAwake(this.state.keepAwake)
               })
            }} style={{ padding: 15, backgroundColor: this.state.keepAwake ? '#5BE55B' : '#FF6666', margin: 15 }}>
               <Text>Keep screen {!this.state.keepAwake ? 'OFF' : 'ON'}</Text>
            </TouchableOpacity>
         </View>
      );
   }
}

const styles = StyleSheet.create({
   container: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: '#F5FCFF',
   },
});
