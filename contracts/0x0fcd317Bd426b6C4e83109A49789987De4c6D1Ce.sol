contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
address oldAddress;

function old() payable {
    return oldAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function recordExists(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor0[arg1].field_0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setTTL(bytes32 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][address(msg.sender)]
    emit NewTTL(arg2, arg1);
    stor0[arg1].field_416 = arg2
}

function setResolver(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][address(msg.sender)]
    emit NewResolver(arg2, arg1);
    stor0[arg1].field_256 = arg2
}

function setOwner(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][address(msg.sender)]
    if arg2:
        stor0[arg1].field_0 = arg2
    else:
        stor0[arg1].field_0 = this.address
    emit Transfer(arg2, arg1);
}

function setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][address(msg.sender)]
    if arg3:
        stor0[arg1][arg2].field_0 = arg3
    else:
        stor0[arg1][arg2].field_0 = this.address
    emit NewOwner(arg3, arg1, arg2);
    return sha3(arg1, arg2)
}

function ttl(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_0:
        return stor0[arg1].field_416
    require ext_code.size(oldAddress)
    staticcall oldAddress.0x16a25cbd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    return ext_call.return_data[24 len 8]
}

function resolver(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_0:
        return stor0[arg1].field_256
    require ext_code.size(oldAddress)
    staticcall oldAddress.resolver(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function owner(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 != this.address:
            return stor0[arg1].field_0
        else:
            return 0
    require ext_code.size(oldAddress)
    staticcall oldAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setRecord(bytes32 arg1, address arg2, address arg3, uint64 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor0[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][address(msg.sender)]
    if arg2:
        stor0[arg1].field_0 = arg2
    else:
        stor0[arg1].field_0 = this.address
    emit Transfer(arg2, arg1);
    if arg3 != stor0[arg1].field_256:
        stor0[arg1].field_256 = arg3
        emit NewResolver(arg3, arg1);
    if arg4 != stor0[arg1].field_416:
        stor0[arg1].field_416 = arg4
        emit NewTTL(arg4, arg1);
}

function setSubnodeRecord(bytes32 arg1, bytes32 arg2, address arg3, address arg4, uint64 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor0[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][address(msg.sender)]
    if arg3:
        stor0[arg1][arg2].field_0 = arg3
    else:
        stor0[arg1][arg2].field_0 = this.address
    emit NewOwner(arg3, arg1, arg2);
    if arg4 != stor0[arg1][arg2].field_256:
        stor0[arg1][arg2].field_256 = arg4
        emit NewResolver(arg4, sha3(arg1, arg2));
    if arg5 != stor0[arg1][arg2].field_416:
        stor0[arg1][arg2].field_416 = arg5
        emit NewTTL(arg5, sha3(arg1, arg2));
}



}
