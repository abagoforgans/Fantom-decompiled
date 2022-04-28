contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e38f112eAddress;
address sub_3fd59465Address;
uint256 gtonAddTopic;
uint256 gtonSubTopic;
uint256 sub_36c176e6;
uint256 sub_38b6d937;
mapping of uint8 stor7;

function sub_36c176e6(?) payable {
    return sub_36c176e6
}

function sub_38b6d937(?) payable {
    return sub_38b6d937
}

function sub_3fd59465(?) payable {
    return sub_3fd59465Address
}

function gtonSubTopic() payable {
    return gtonSubTopic
}

function gtonAddTopic() payable {
    return gtonAddTopic
}

function owner() payable {
    return owner
}

function sub_d8aad985(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor7[arg1]))
}

function sub_e38f112e(?) payable {
    return sub_e38f112eAddress
}

function _fallback() payable {
    revert
}

function sub_2d227be3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_36c176e6 = arg1
}

function sub_8358de2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_38b6d937 = arg1
}

function setGTONAddTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    gtonAddTopic = arg1
}

function setGTONSubTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    gtonSubTopic = arg1
}

function sub_1d01590b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor7[address(arg1)]) = not bool(uint8(stor7[address(arg1)])) or Mask(248, 8, uint256(stor7[address(arg1)]))
    emit 0xcbd93391: msg.sender, address(arg1), bool(uint8(stor7[address(arg1)]))
}

function sub_abecfcf0(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == Mask(128, 128, arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == arg8
    if not uint8(stor7[address(msg.sender)]):
        revert with 0, 'not allowed to route value'
    if sha3(arg4) != sha3(gtonAddTopic):
        if sha3(arg4) != sha3(gtonSubTopic):
            if sha3(arg4) != sha3(sub_36c176e6):
                if sha3(arg4) == sha3(sub_38b6d937):
                    require ext_code.size(sub_3fd59465Address)
                    call sub_3fd59465Address.0xcc1c62bb with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
            else:
                require ext_code.size(sub_3fd59465Address)
                call sub_3fd59465Address.0x8daaf0a2 with:
                     gas gas_remaining wei
                    args address(arg5), address(arg7), arg8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                if ceil32(arg2.length) <= arg2.length:
                    emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    if sha3(arg4) == sha3(sub_38b6d937):
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0xcc1c62bb with:
                             gas gas_remaining wei
                            args address(arg5), address(arg6), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                else:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                    emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    if sha3(arg4) == sha3(sub_38b6d937):
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0xcc1c62bb with:
                             gas gas_remaining wei
                            args address(arg5), address(arg6), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                        mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                        if ceil32(arg2.length) > arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                        mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                        mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                        mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                        emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
        else:
            require ext_code.size(sub_e38f112eAddress)
            call sub_e38f112eAddress.0xa58760aa with:
                 gas gas_remaining wei
                args address(arg6), arg8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            if ceil32(arg2.length) <= arg2.length:
                emit GTONSub(Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8);
                if sha3(arg4) != sha3(sub_36c176e6):
                    if sha3(arg4) == sha3(sub_38b6d937):
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0xcc1c62bb with:
                             gas gas_remaining wei
                            args address(arg5), address(arg6), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                else:
                    require ext_code.size(sub_3fd59465Address)
                    call sub_3fd59465Address.0x8daaf0a2 with:
                         gas gas_remaining wei
                        args address(arg5), address(arg7), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                    if ceil32(arg2.length) <= arg2.length:
                        emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                        emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                            mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                            mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                            emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
            else:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 609] = 0
                emit GTONSub(Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8);
                if sha3(arg4) != sha3(sub_36c176e6):
                    if sha3(arg4) == sha3(sub_38b6d937):
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0xcc1c62bb with:
                             gas gas_remaining wei
                            args address(arg5), address(arg6), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                else:
                    require ext_code.size(sub_3fd59465Address)
                    call sub_3fd59465Address.0x8daaf0a2 with:
                         gas gas_remaining wei
                        args address(arg5), address(arg7), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg2.length)) + 705] = arg2.length
                    mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                    if ceil32(arg2.length) <= arg2.length:
                        mem[ceil32(ceil32(arg2.length)) + 609] = address(arg6)
                        mem[ceil32(ceil32(arg2.length)) + 641] = address(arg7)
                        mem[ceil32(ceil32(arg2.length)) + 673] = arg8
                        emit 0xd5168079: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 609 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 641 len ceil32(arg2.length) + -arg2.length + 96]
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                        mem[ceil32(ceil32(arg2.length)) + 609] = address(arg6)
                        mem[ceil32(ceil32(arg2.length)) + 641] = address(arg7)
                        mem[ceil32(ceil32(arg2.length)) + 673] = arg8
                        emit 0xd5168079: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 609 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 641 len ceil32(arg2.length) + -arg2.length + 96]
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                            mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                            mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                            emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
    else:
        require ext_code.size(sub_e38f112eAddress)
        call sub_e38f112eAddress.0xca0b1878 with:
             gas gas_remaining wei
            args address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg2.length)) + 481 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        if ceil32(arg2.length) <= arg2.length:
            emit GTONAdd(Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8);
            if sha3(arg4) != sha3(gtonSubTopic):
                if sha3(arg4) != sha3(sub_36c176e6):
                    if sha3(arg4) == sha3(sub_38b6d937):
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0xcc1c62bb with:
                             gas gas_remaining wei
                            args address(arg5), address(arg6), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                else:
                    require ext_code.size(sub_3fd59465Address)
                    call sub_3fd59465Address.0x8daaf0a2 with:
                         gas gas_remaining wei
                        args address(arg5), address(arg7), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                    if ceil32(arg2.length) <= arg2.length:
                        emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                        emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                            mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                            mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                            emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
            else:
                require ext_code.size(sub_e38f112eAddress)
                call sub_e38f112eAddress.0xa58760aa with:
                     gas gas_remaining wei
                    args address(arg6), arg8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                if ceil32(arg2.length) <= arg2.length:
                    emit GTONSub(Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8);
                    if sha3(arg4) != sha3(sub_36c176e6):
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0x8daaf0a2 with:
                             gas gas_remaining wei
                            args address(arg5), address(arg7), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                        if ceil32(arg2.length) <= arg2.length:
                            emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        else:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                            emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                                mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                                if ceil32(arg2.length) > arg2.length:
                                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                                mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                                mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                                mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                                emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
                else:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 609] = 0
                    emit GTONSub(Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8);
                    if sha3(arg4) != sha3(sub_36c176e6):
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0x8daaf0a2 with:
                             gas gas_remaining wei
                            args address(arg5), address(arg7), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(ceil32(arg2.length)) + 705] = arg2.length
                        mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                        if ceil32(arg2.length) <= arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + 609] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 641] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 673] = arg8
                            emit 0xd5168079: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 609 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 641 len ceil32(arg2.length) + -arg2.length + 96]
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        else:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                            mem[ceil32(ceil32(arg2.length)) + 609] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 641] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 673] = arg8
                            emit 0xd5168079: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 609 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 641 len ceil32(arg2.length) + -arg2.length + 96]
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                                mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                                if ceil32(arg2.length) > arg2.length:
                                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                                mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                                mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                                mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                                emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
        else:
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 481] = 0
            emit GTONAdd(Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8);
            if sha3(arg4) != sha3(gtonSubTopic):
                if sha3(arg4) != sha3(sub_36c176e6):
                    if sha3(arg4) == sha3(sub_38b6d937):
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0xcc1c62bb with:
                             gas gas_remaining wei
                            args address(arg5), address(arg6), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                else:
                    require ext_code.size(sub_3fd59465Address)
                    call sub_3fd59465Address.0x8daaf0a2 with:
                         gas gas_remaining wei
                        args address(arg5), address(arg7), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                    if ceil32(arg2.length) <= arg2.length:
                        emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                        emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                            mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                            mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                            emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
            else:
                require ext_code.size(sub_e38f112eAddress)
                call sub_e38f112eAddress.0xa58760aa with:
                     gas gas_remaining wei
                    args address(arg6), arg8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg2.length)) + 577] = arg2.length
                mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                if ceil32(arg2.length) <= arg2.length:
                    mem[ceil32(ceil32(arg2.length)) + 481] = address(arg6)
                    mem[ceil32(ceil32(arg2.length)) + 513] = address(arg7)
                    mem[ceil32(ceil32(arg2.length)) + 545] = arg8
                    emit GTONSub(Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 481 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 513 len ceil32(arg2.length) + -arg2.length + 96]);
                    if sha3(arg4) != sha3(sub_36c176e6):
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0x8daaf0a2 with:
                             gas gas_remaining wei
                            args address(arg5), address(arg7), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                        if ceil32(arg2.length) <= arg2.length:
                            emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        else:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                            emit 0xd5168079: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                                mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                                if ceil32(arg2.length) > arg2.length:
                                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                                mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                                mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                                mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                                emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
                else:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 609] = 0
                    mem[ceil32(ceil32(arg2.length)) + 481] = address(arg6)
                    mem[ceil32(ceil32(arg2.length)) + 513] = address(arg7)
                    mem[ceil32(ceil32(arg2.length)) + 545] = arg8
                    emit GTONSub(Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 481 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 513 len ceil32(arg2.length) + -arg2.length + 96]);
                    if sha3(arg4) != sha3(sub_36c176e6):
                        if sha3(arg4) == sha3(sub_38b6d937):
                            require ext_code.size(sub_3fd59465Address)
                            call sub_3fd59465Address.0xcc1c62bb with:
                                 gas gas_remaining wei
                                args address(arg5), address(arg6), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                    else:
                        require ext_code.size(sub_3fd59465Address)
                        call sub_3fd59465Address.0x8daaf0a2 with:
                             gas gas_remaining wei
                            args address(arg5), address(arg7), arg8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(ceil32(arg2.length)) + 705] = arg2.length
                        mem[ceil32(ceil32(arg2.length)) + 737 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                        if ceil32(arg2.length) <= arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + 609] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 641] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 673] = arg8
                            emit 0xd5168079: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 609 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 641 len ceil32(arg2.length) + -arg2.length + 96]
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xeccb7b19: Mask(128, 128, arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), address(arg5), address(arg6), address(arg7), arg8
                        else:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 737] = 0
                            mem[ceil32(ceil32(arg2.length)) + 609] = address(arg6)
                            mem[ceil32(ceil32(arg2.length)) + 641] = address(arg7)
                            mem[ceil32(ceil32(arg2.length)) + 673] = arg8
                            emit 0xd5168079: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 609 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 641 len ceil32(arg2.length) + -arg2.length + 96]
                            if sha3(arg4) == sha3(sub_38b6d937):
                                require ext_code.size(sub_3fd59465Address)
                                call sub_3fd59465Address.0xcc1c62bb with:
                                     gas gas_remaining wei
                                    args address(arg5), address(arg6), arg8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg2.length)) + 833] = arg2.length
                                mem[ceil32(ceil32(arg2.length)) + 865 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
                                if ceil32(arg2.length) > arg2.length:
                                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 865] = 0
                                mem[ceil32(ceil32(arg2.length)) + 737] = address(arg6)
                                mem[ceil32(ceil32(arg2.length)) + 769] = address(arg7)
                                mem[ceil32(ceil32(arg2.length)) + 801] = arg8
                                emit 0xeccb7b19: Mask(128, 128, arg1), 224, address(arg3), address(arg5), mem[ceil32(ceil32(arg2.length)) + 737 len arg2.length], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 769 len ceil32(arg2.length) + -arg2.length + 96]
}



}
