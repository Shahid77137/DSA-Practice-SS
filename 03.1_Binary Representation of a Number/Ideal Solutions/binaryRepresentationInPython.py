
# Convert the number into its Binary Representation
def binaryRepresentation(Number):
    binary_str = ""

    for i in range(31, -1, -1):
        if Number & (1 << i):
            binary_str += "1"
        else:
            binary_str += "0"

    return binary_str

if __name__ == "__main__":
    # Static Input
    N = 7
    binary_str = binaryRepresentation(N)
    print(binary_str)

