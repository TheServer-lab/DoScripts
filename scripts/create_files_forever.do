# DoScript - Create Empty Files Forever
# Press Ctrl+C to stop

# Declare global variables
global_variable = counter
global_variable = filename

# Initialize counter
counter = 0

say "Starting infinite file creation loop..."
say "Press Ctrl+C to stop"
say ""

# Infinite loop
loop forever
    # Create the empty file with simple syntax
    make file '{counter}.txt'
    
    # Display progress
    say 'Created: {counter}.txt'
    
    # Increment counter
    counter = counter + 1
    
    # Optional: Add delay to prevent overwhelming the system
    # Uncomment the next line to add a 100ms delay between files
    # sleep 100
end_loop
    
    # Optional: Add delay to prevent overwhelming the system
    # Uncomment the next line to add a 100ms delay between files
    # sleep 100
end_loop
