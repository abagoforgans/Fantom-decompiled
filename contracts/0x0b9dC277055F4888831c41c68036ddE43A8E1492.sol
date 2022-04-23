contract main {




// =====================  Runtime code  =====================


#
#  - reInsert(address arg1, uint256 arg2, address arg3, address arg4)
#  - findInsertPosition(uint256 arg1, address arg2, address arg3)
#  - insert(address arg1, uint256 arg2, address arg3, address arg4)
#
const NAME = 'SortedTroves'


address owner;
address borrowerOperationsAddress;
address troveManagerAddress;
address firstAddress;
address lastAddress;
uint256 maxSize;
uint256 size;
mapping of struct next;

function getFirst() payable {
    return firstAddress
}

function troveManager() payable {
    return troveManagerAddress
}

function getLast() payable {
    return lastAddress
}

function contains(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(next[address(arg1)].field_0)
}

function getMaxSize() payable {
    return maxSize
}

function getNext(address arg1) payable {
    require calldata.size - 4 >= 32
    return next[address(arg1)].field_8
}

function owner() payable {
    return owner
}

function getPrev(address arg1) payable {
    require calldata.size - 4 >= 32
    return next[address(arg1)].field_256
}

function borrowerOperationsAddress() payable {
    return borrowerOperationsAddress
}

function getSize() payable {
    return size
}

function _fallback() payable {
    revert
}

function isEmpty() payable {
    return not bool(size)
}

function isFull() payable {
    return (size == maxSize)
}

function isOwner() payable {
    return (msg.sender == owner)
}

function data() payable {
    return firstAddress, lastAddress, maxSize, size
}

function setParams(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64536f7274656454726f7665733a2053697a652063616ee2809974206265207a6572,
                    mem[198 len 30]
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    if not arg3:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg3):
        revert with 0, 'Account code size cannot be zero'
    maxSize = arg1
    troveManagerAddress = arg2
    borrowerOperationsAddress = arg3
    emit TroveManagerAddressChanged(arg2);
    emit BorrowerOperationsAddressChanged(arg3);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6f536f7274656454726f7665733a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[208 len 20]
    if not next[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x65536f7274656454726f7665733a204c69737420646f6573206e6f7420636f6e7461696e207468652069,
                    mem[206 len 22]
    if 1 >= size:
        firstAddress = 0
        lastAddress = 0
    else:
        if firstAddress == arg1:
            firstAddress = next[address(arg1)].field_8
            next[next[address(arg1)].field_8].field_256 = 0
        else:
            if lastAddress != arg1:
                next[next[address(arg1)].field_256].field_8 = next[address(arg1)].field_8
                next[next[address(arg1)].field_8].field_256 = next[address(arg1)].field_256
            else:
                lastAddress = next[address(arg1)].field_256
                next[next[address(arg1)].field_256].field_8 = 0
    next[address(arg1)].field_0 = 0
    next[address(arg1)].field_256 = 0
    if 1 > size:
        revert with 0, 'SafeMath: subtraction overflow'
    size--
    emit NodeRemoved(arg1);
}

function validInsertPosition(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2:
        if not arg3:
            if lastAddress != arg2:
                return (lastAddress == arg2)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0xb0d8e181 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return arg1 <= ext_call.return_data[0]
        if arg3 != next[address(arg2)].field_8:
            return (arg3 == next[address(arg2)].field_8)
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.0xb0d8e181 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            return ext_call.return_data[0] >= arg1
    else:
        if not arg3:
            return not bool(size)
        if not arg2:
            if firstAddress != arg3:
                return (firstAddress == arg3)
        else:
            if not arg3:
                if lastAddress != arg2:
                    return (lastAddress == arg2)
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xb0d8e181 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg1 <= ext_call.return_data[0]
            if arg3 != next[address(arg2)].field_8:
                return (arg3 == next[address(arg2)].field_8)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0xb0d8e181 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                return ext_call.return_data[0] >= arg1
    require ext_code.size(troveManagerAddress)
    staticcall troveManagerAddress.0xb0d8e181 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg1 >= ext_call.return_data[0]
}



}
