# **Puzzle Game with Stopwatch & LED Control**

## **Overview**

This is a puzzle game designed to combine a stopwatch, memory component, and control mechanisms using buttons and switches on an FPGA (Altera board). The player must control the LEDs by toggling switches (SW7 to SW0) to turn them on or off. The goal is to turn on the relevant LEDs (LED9 to LED4) in the correct configuration, and the time taken to solve the puzzle will be measured and displayed by the stopwatch.

## **Controls**

- **Button0**: Starts the stopwatch and begins the puzzle.
- **Button1**: Resets the stopwatch for a new round.
- **Button2**: Resets the LEDs to their default state.
- **SW7 to SW0**: Toggle these switches to control the LEDs.
- **SW8**: Raise this switch to see the last time taken to complete the puzzle.

## **How to Play**

1. **Start the Game**: 
   - Press **Button0** to start the stopwatch and begin the puzzle.

2. **Game Objective**: 
   - The player must use switches **SW7 to SW0** to control the LEDs.
   - Each switch controls specific LEDs. Toggling a switch will flip the LEDs on or off.
   - If an LED is turned off, but the switch controlling it is raised, it will turn on. If it’s on, raising the switch will turn it off.
   - The goal is to turn on only the relevant LEDs (**LED4 to LED9**) by raising the correct switches.

3. **End of Game**: 
   - The game ends when all the correct switches are raised, and all of the LEDs (**LED4 to LED9**) are turned on.
   - The stopwatch will stop, and the system will save the time it took to finish the puzzle.

4. **Reset the Game**: 
   - To start a new round, lower all the switches and press **Button1** to reset the stopwatch.

5. **View Last Time**: 
   - To check the last time taken to finish the puzzle, raise **SW8**. The system will display the time taken in the previous round.

6. **LED Reset**: 
   - If there is an issue with turning the LEDs on/off, use **Button2** to reset the LEDs to their default state.
   - To use this feature, lower all the raised switches and press **Button2**. Afterward, you can continue playing as usual.

## **Technical Details**

- **FPGA Board**: `Altera DE0`.
- **Design Software**: Quartus II.
