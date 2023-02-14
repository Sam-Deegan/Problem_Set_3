
#TLDR: Purpose of the code is to set up the file structure for new GitHub Projects 

### Code Generating Root Folders ##############################################

# Define the top-level directories
directories <- c("0_Setup", "1_Build", "2_Analysis")

# Define the subdirectories for each top-level directory
subdirectories <- c("A_Input", "B_Code", "C_Output", "D_Temp")

# Create the directory structure
for (dir in directories) {
  # Create the top-level directory
  dir.create(dir)
  
  # Create the subdirectories within the top-level directory
  if (dir != "0_Setup") {
    for (subdir in subdirectories) {
      dir.create(file.path(dir, subdir))
    }
  }
}


###############################################################################

