contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 scaledBalanceOf;
mapping of uint8 stor102;
mapping of uint256 scaledTotalSupply;
array of struct stor104;
address owner;
address pendingOwner;
mapping of uint8 stor107;
mapping of uint256 sub_a6d2823c;
mapping of uint8 sub_0ac77c32;
uint64 qtyOfManagedAssets;
mapping of struct indexes;

function qtyOfManagedAssets() payable {
    return qtyOfManagedAssets
}

function sub_0ac77c32(?) payable {
    require calldata.size - 4 >= 32
    if uint8(sub_0ac77c32[arg1]) >= 2:
        revert with 0, 33
    return uint8(sub_0ac77c32[arg1])
}

function owner() payable {
    return owner
}

function scaledTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return scaledTotalSupply[arg1]
}

function indexes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(indexes[arg1].field_0)
}

function scaledBalanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    return scaledBalanceOf[arg2][address(arg1)]
}

function sub_a6d2823c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 2
    require arg2 == address(arg2)
    return sub_a6d2823c[arg1][arg2]
}

function sub_aa39404b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor107[arg1])
}

function sub_ccf25261(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 2
    require arg2 == address(arg2)
    if arg1 > 1:
        revert with 0, 33
    if sub_a6d2823c[arg1][address(arg2)] > qtyOfManagedAssets:
        revert with 0, '118', 0
    return sub_a6d2823c[arg1][address(arg2)]
}

function pendingOwner() payable {
    return pendingOwner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor102[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function cancelTransferOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require pendingOwner
    pendingOwner = 0
    emit NewPendingOwner(address arg1)
    emit 0x0 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not pendingOwner
    pendingOwner = arg1
    emit NewPendingOwner(arg1);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, '', 0
    stor102[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setPermit(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0, '117', 0
    stor107[address(arg1)] = uint8(arg2)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    revert with 0, '128', 0
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not scaledTotalSupply[arg1]:
        return 0
    if not uint256(indexes[arg1].field_0):
        return 0
    if not uint256(indexes[arg1].field_0):
        revert with 0, 18
    if scaledTotalSupply[arg1] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / uint256(indexes[arg1].field_0):
        revert with 0, '', 0
    if scaledTotalSupply[arg1] and uint256(indexes[arg1].field_0) > -1 / scaledTotalSupply[arg1]:
        revert with 0, 17
    if scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0) > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_30e2d1ed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 2
    require arg2 == address(arg2)
    if not stor107[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, '', 0
    if arg1 > 1:
        revert with 0, 33
    if sub_a6d2823c[arg1][address(arg2)] != 0:
        revert with 0, '115', 0
    if arg1 > 1:
        revert with 0, 33
    sub_a6d2823c[arg1][address(arg2)] = qtyOfManagedAssets
    uint256(sub_0ac77c32[stor110]) = arg1 or Mask(248, 8, uint256(sub_0ac77c32[stor110]))
    uint256(indexes[stor110].field_0) = 1000000000 * 10^18
    if qtyOfManagedAssets == test266151307():
        revert with 0, 17
    qtyOfManagedAssets = uint64(qtyOfManagedAssets + 1)
    if qtyOfManagedAssets < 1:
        revert with 0, 17
    return uint64(qtyOfManagedAssets - 1)
}

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    if not scaledBalanceOf[arg2][address(arg1)]:
        return 0
    if not uint256(indexes[arg2].field_0):
        return 0
    if not uint256(indexes[arg2].field_0):
        revert with 0, 18
    if scaledBalanceOf[arg2][address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / uint256(indexes[arg2].field_0):
        revert with 0, '', 0
    if scaledBalanceOf[arg2][address(arg1)] and uint256(indexes[arg2].field_0) > -1 / scaledBalanceOf[arg2][address(arg1)]:
        revert with 0, 17
    if scaledBalanceOf[arg2][address(arg1)] * uint256(indexes[arg2].field_0) > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((scaledBalanceOf[arg2][address(arg1)] * uint256(indexes[arg2].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length.field_1) < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor104[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor104.length = 0
            idx = 0
            while uint255(stor104.length.field_1) + 31 / 32 > idx:
                uint256(stor104[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor104.length) == stor104.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor104[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor104.length = 0
            idx = 0
            while stor104.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor104[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor107[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    if not uint256(indexes[arg2].field_0):
        revert with 0, '201', 0
    if -1 < uint255(indexes[arg2].field_1):
        revert with 0, 17
    if arg3 > -uint255(indexes[arg2].field_1) - 1 / 1000000000 * 10^18:
        revert with 0, '', 0
    if arg3 and 1000000000 * 10^18 > -1 / arg3:
        revert with 0, 17
    if 1000000000 * 10^18 * arg3 > !uint255(indexes[arg2].field_1):
        revert with 0, 17
    if not uint256(indexes[arg2].field_0):
        revert with 0, 18
    if not (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0):
        revert with 0, '', 0
    if scaledBalanceOf[arg2][address(arg1)] < (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0):
        revert with 0, '', 0
    scaledBalanceOf[arg2][address(arg1)] -= (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0)
    if scaledTotalSupply[arg2] < (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0):
        revert with 0, 17
    scaledTotalSupply[arg2] -= (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0)
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 128 < 96 or (32 * arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if (32 * arg4.length) + 160 < 128 or (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    revert with 0, '128', 0
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 3
    if stor107[address(msg.sender)]:
    else:
        if owner != msg.sender:
            revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    if not uint256(indexes[arg2].field_0):
        revert with 0, '201', 0
    if -1 < uint255(indexes[arg2].field_1):
        revert with 0, 17
    if arg3 > -uint255(indexes[arg2].field_1) - 1 / 1000000000 * 10^18:
        revert with 0, '', 0
    if arg3 and 1000000000 * 10^18 > -1 / arg3:
        revert with 0, 17
    if 1000000000 * 10^18 * arg3 > !uint255(indexes[arg2].field_1):
        revert with 0, 17
    if not uint256(indexes[arg2].field_0):
        revert with 0, 18
    if not (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0):
        revert with 0, '', 0
    if scaledBalanceOf[arg2][address(arg1)] > !((1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0)):
        revert with 0, 17
    scaledBalanceOf[arg2][address(arg1)] += (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0)
    if scaledTotalSupply[arg2] > !((1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0)):
        revert with 0, 17
    scaledTotalSupply[arg2] += (1000000000 * 10^18 * arg3) + uint255(indexes[arg2].field_1) / uint256(indexes[arg2].field_0)
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[ceil32(arg4.length) + 452] = msg.sender
    mem[ceil32(arg4.length) + 484] = 0
    mem[ceil32(arg4.length) + 516] = arg2
    mem[ceil32(arg4.length) + 548] = arg3
    mem[ceil32(arg4.length) + 580] = 160
    mem[ceil32(arg4.length) + 612] = arg4.length
    mem[ceil32(arg4.length) + 644 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(arg4.length) + arg4.length + 644] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(arg4.length) + 448] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, '', 0
    if return_data.size < 68:
        revert with 0, '122', 0
    if uint32(arg2) >> 224 != Error(string arg1):
        revert with 0, '122', 0
    mem[ceil32(arg4.length) + 448 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, '122', 0
    if mem[ceil32(arg4.length) + ext_call.return_data[0] + 448] > test266151307():
        revert with 0, '122', 0
    if ext_call.return_data[0] + mem[ceil32(arg4.length) + ext_call.return_data[0] + 448] + 32 > return_data.size:
        revert with 0, '122', 0
    if not ceil32(arg4.length) + ext_call.return_data[0] + 448:
        revert with 0, '122', 0
    revert with 0, 
                32,
                mem[ceil32(arg4.length) + ext_call.return_data[0] + 448],
                mem[ceil32(arg4.length) + ext_call.return_data[0] + 480 len ceil32(mem[ceil32(arg4.length) + ext_call.return_data[0] + 448])]
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length.field_1) < 32:
            revert with 0, 34
        if bool(stor104.length):
            if bool(stor104.length) == uint255(stor104.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor104.length.field_1):
                if 31 < uint255(stor104.length.field_1):
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor104.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor104[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor104.length.field_1)), data=mem[128 len ceil32(uint255(stor104.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor104.length.field_8)
        else:
            if bool(stor104.length) == stor104.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor104.length.field_1 % 128:
                if 31 < stor104.length.field_1 % 128:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor104[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor104.length.field_1)), data=mem[128 len ceil32(uint255(stor104.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor104.length.field_8)
        mem[ceil32(uint255(stor104.length.field_1)) + 192 len ceil32(uint255(stor104.length.field_1))] = mem[128 len ceil32(uint255(stor104.length.field_1))]
        if ceil32(uint255(stor104.length.field_1)) > uint255(stor104.length.field_1):
            mem[ceil32(uint255(stor104.length.field_1)) + uint255(stor104.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor104.length.field_1)), data=mem[128 len ceil32(uint255(stor104.length.field_1))], mem[(2 * ceil32(uint255(stor104.length.field_1))) + 192 len 2 * ceil32(uint255(stor104.length.field_1))]), 
    if bool(stor104.length) == stor104.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor104.length.field_1):
            if 31 < uint255(stor104.length.field_1):
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while uint255(stor104.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor104[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor104.length.field_8)
    else:
        if bool(stor104.length) == stor104.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor104.length.field_1 % 128:
            if 31 < stor104.length.field_1 % 128:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor104[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor104.length.field_8)
    mem[ceil32(stor104.length.field_1 % 128) + 192 len ceil32(stor104.length.field_1 % 128)] = mem[128 len ceil32(stor104.length.field_1 % 128)]
    if ceil32(stor104.length.field_1 % 128) > stor104.length.field_1 % 128:
        mem[ceil32(stor104.length.field_1 % 128) + stor104.length.field_1 % 128 + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1 % 128)], mem[(2 * ceil32(stor104.length.field_1 % 128)) + 192 len 2 * ceil32(stor104.length.field_1 % 128)]), 
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
}

function updateState(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor107[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, '', 0
    if scaledTotalSupply[arg1]:
        if uint256(indexes[arg1].field_0):
            if not uint256(indexes[arg1].field_0):
                revert with 0, 18
            if scaledTotalSupply[arg1] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / uint256(indexes[arg1].field_0):
                revert with 0, '', 0
            if scaledTotalSupply[arg1] and uint256(indexes[arg1].field_0) > -1 / scaledTotalSupply[arg1]:
                revert with 0, 17
            if scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0) > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            if arg2 > 0:
                if (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 > 0:
                    if arg2 > (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18:
                        if arg2 < (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18:
                            revert with 0, 17
                        if (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 and 10^9 > -1 / (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18:
                            revert with 0, 17
                        if 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9 != (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18:
                            revert with 0, '', 0
                        if arg2 - ((scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) and 10^9 > -1 / arg2 - ((scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                            revert with 0, 17
                        if (10^9 * arg2) - (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) / 10^9 != arg2 - ((scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                            revert with 0, '', 0
                        if not 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18:
                            revert with 0, '201', 0
                        if -1 < 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2:
                            revert with 0, 17
                        if (10^9 * arg2) - (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) > -(10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) - 1 / 1000000000 * 10^18:
                            revert with 0, '', 0
                        if (10^9 * arg2) - (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) and 1000000000 * 10^18 > -1 / (10^9 * arg2) - (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18):
                            revert with 0, 17
                        if (1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) > !(10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2):
                            revert with 0, 17
                        if not 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18:
                            revert with 0, 18
                        if (1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffcc4d1c3602f7fc317ffffff:
                            revert with 0, 17
                        if not ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + 1000000000 * 10^18:
                            uint256(indexes[arg1].field_0) = 0
                        else:
                            if not uint256(indexes[arg1].field_0):
                                uint256(indexes[arg1].field_0) = 0
                            else:
                                if not uint256(indexes[arg1].field_0):
                                    revert with 0, 18
                                if ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + 1000000000 * 10^18 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / uint256(indexes[arg1].field_0):
                                    revert with 0, '', 0
                                if ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + 1000000000 * 10^18 and uint256(indexes[arg1].field_0) > -1 / ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + 1000000000 * 10^18:
                                    revert with 0, 17
                                if (1000000000 * 10^18 * uint256(indexes[arg1].field_0)) + ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 * uint256(indexes[arg1].field_0)) > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                if (1000000000 * 10^18 * uint256(indexes[arg1].field_0)) + ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 > test266151307():
                                    revert with 0, '100', 0
                                uint128(indexes[arg1].field_0) = uint128((1000000000 * 10^18 * uint256(indexes[arg1].field_0)) + ((1000000000000000000 * 10^18 * arg2) - (1000000000000000000 * 10^18 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18) + (10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 / 2) / 10^9 * (scaledTotalSupply[arg1] * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18 * uint256(indexes[arg1].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18)
                                uint128(indexes[arg1].field_128) = 0
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if (32 * arg2.length) + 160 < 128 or (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 3
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0x3131340000000000000000000000000000000000000000000000000000000000
    if arg1.length != arg2.length:
        revert with 0, '', 0
    if arg1.length > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 256
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _202 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            _207 = mem[(32 * idx) + (32 * arg1.length) + 160]
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 3
            mem[_212 + 32] = 0x3131360000000000000000000000000000000000000000000000000000000000
            if not address(_202):
                _218 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _218 + 68] = mem[_212 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_218 + 71] = 0
                revert with memory
                  from mem[64]
                   len _218 + -mem[64] + 100
            mem[0] = address(_202)
            mem[32] = sha3(_207, 101)
            if not scaledBalanceOf[_207][address(_202)]:
                if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = _207
            mem[32] = 111
            if not uint256(indexes[_207].field_0):
                if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not uint256(indexes[_207].field_0):
                revert with 0, 18
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 3
            mem[_239 + 32] = 0x3230330000000000000000000000000000000000000000000000000000000000
            if scaledBalanceOf[_207][address(_202)] <= 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / uint256(indexes[_207].field_0):
                if scaledBalanceOf[_207][address(_202)] and uint256(indexes[_207].field_0) > -1 / scaledBalanceOf[_207][address(_202)]:
                    revert with 0, 17
                if scaledBalanceOf[_207][address(_202)] * uint256(indexes[_207].field_0) > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                    revert with 0, 17
                if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = (scaledBalanceOf[_207][address(_202)] * uint256(indexes[_207].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _241 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 3
            idx = 0
            while idx < 3:
                mem[idx + _241 + 68] = mem[_239 + idx + 32]
                idx = idx + 32
                continue 
            mem[_241 + 71] = 0
            revert with memory
              from mem[64]
               len _241 + -mem[64] + 100
        mem[mem[64]] = 32
        _209 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
        mem[mem[64] + 64 len 32 * _209] = mem[(32 * arg1.length) + (32 * arg2.length) + 256 len 32 * _209]
        return 32, mem[mem[64] + 32 len (32 * _209) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _205 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 0, 50
        _208 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _213 = mem[64]
        mem[64] = mem[64] + 64
        mem[_213] = 3
        mem[_213 + 32] = 0x3131360000000000000000000000000000000000000000000000000000000000
        if not address(_205):
            _222 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 3
            idx = 0
            while idx < 3:
                mem[idx + _222 + 68] = mem[_213 + idx + 32]
                idx = idx + 32
                continue 
            mem[_222 + 71] = 0
            revert with memory
              from mem[64]
               len _222 + -mem[64] + 100
        mem[0] = address(_205)
        mem[32] = sha3(_208, 101)
        if not scaledBalanceOf[_208][address(_205)]:
            if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = _208
        mem[32] = 111
        if not uint256(indexes[_208].field_0):
            if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not uint256(indexes[_208].field_0):
            revert with 0, 18
        _240 = mem[64]
        mem[64] = mem[64] + 64
        mem[_240] = 3
        mem[_240 + 32] = 0x3230330000000000000000000000000000000000000000000000000000000000
        if scaledBalanceOf[_208][address(_205)] <= 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / uint256(indexes[_208].field_0):
            if scaledBalanceOf[_208][address(_205)] and uint256(indexes[_208].field_0) > -1 / scaledBalanceOf[_208][address(_205)]:
                revert with 0, 17
            if scaledBalanceOf[_208][address(_205)] * uint256(indexes[_208].field_0) > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = (scaledBalanceOf[_208][address(_205)] * uint256(indexes[_208].field_0)) + 500000000 * 10^18 / 1000000000 * 10^18
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _242 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 3
        idx = 0
        while idx < 3:
            mem[idx + _242 + 68] = mem[_240 + idx + 32]
            idx = idx + 32
            continue 
        mem[_242 + 71] = 0
        revert with memory
          from mem[64]
           len _242 + -mem[64] + 100
    mem[mem[64]] = 32
    _210 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    mem[mem[64] + 64 len 32 * _210] = mem[(32 * arg1.length) + (32 * arg2.length) + 256 len 32 * _210]
    return 32, mem[mem[64] + 32 len (32 * _210) + 32]
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if (32 * arg2.length) + 128 < 96 or (32 * arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 160 < 128 or (32 * arg2.length) + (32 * arg3.length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * arg2.length) + 128] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = (32 * arg2.length) + 160
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 107
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 3
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0x3131310000000000000000000000000000000000000000000000000000000000
    if stor107[address(msg.sender)]:
        mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 3
        mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 0x3131360000000000000000000000000000000000000000000000000000000000
        if not arg1:
            revert with 0, '', 0
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 352
        mem[(32 * arg2.length) + (32 * arg3.length) + 288] = 3
        mem[(32 * arg2.length) + (32 * arg3.length) + 320] = 0x3131340000000000000000000000000000000000000000000000000000000000
        if arg2.length != arg3.length:
            revert with 0, '', 0
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < arg2.length:
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 0, 50
            _435 = mem[(32 * idx) + (32 * arg2.length) + 160]
            if idx >= mem[96]:
                revert with 0, 50
            _441 = sha3(mem[(32 * idx) + 128], 101)
            if idx >= mem[96]:
                revert with 0, 50
            _450 = sha3(mem[(32 * idx) + 128], 103)
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 111
            _462 = sha3(mem[(32 * idx) + 128], 111)
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 0, 50
            _473 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _476 = mem[64]
            mem[64] = mem[64] + 64
            mem[_476] = 3
            mem[_476 + 32] = '201'
            if not uint256(stor[_462].field_0):
                _479 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _479 + 68] = mem[_476 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_479 + 71] = 0
                revert with memory
                  from mem[64]
                   len _479 + -mem[64] + 100
            if -1 < uint255(stor[_462].field_1):
                revert with 0, 17
            _493 = mem[64]
            mem[64] = mem[64] + 64
            mem[_493] = 3
            mem[_493 + 32] = 0x3230330000000000000000000000000000000000000000000000000000000000
            if _473 > -uint255(stor[_462].field_1) - 1 / 1000000000 * 10^18:
                _495 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _495 + 68] = mem[_493 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_495 + 71] = 0
                revert with memory
                  from mem[64]
                   len _495 + -mem[64] + 100
            if _473 and 1000000000 * 10^18 > -1 / _473:
                revert with 0, 17
            if 1000000000 * 10^18 * _473 > !uint255(stor[_462].field_1):
                revert with 0, 17
            if not uint256(stor[_462].field_0):
                revert with 0, 18
            if not (1000000000 * 10^18 * _473) + uint255(stor[_462].field_1) / uint256(stor[_462].field_0):
                _505 = mem[64]
                mem[64] = mem[64] + 64
                mem[_505] = 3
                mem[_505 + 32] = 0x3130320000000000000000000000000000000000000000000000000000000000
                _507 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _507 + 68] = mem[_505 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_507 + 71] = 0
                revert with memory
                  from mem[64]
                   len _507 + -mem[64] + 100
            _508 = mem[64]
            mem[64] = mem[64] + 64
            mem[_508] = 3
            mem[_508 + 32] = 0x3130320000000000000000000000000000000000000000000000000000000000
            if uint256(stor[_441][address(arg1)].field_0) < (1000000000 * 10^18 * _473) + uint255(stor[_462].field_1) / uint256(stor[_462].field_0):
                _511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _511 + 68] = mem[_508 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_511 + 71] = 0
                revert with memory
                  from mem[64]
                   len _511 + -mem[64] + 100
            if uint256(stor[_441][address(arg1)].field_0) < _435:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            scaledBalanceOf[mem[(32 * idx) + 128]][address(arg1)] = uint256(stor[_441][address(arg1)].field_0) - _435
            if uint256(stor[_450].field_0) < _435:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 103
            scaledTotalSupply[mem[(32 * idx) + 128]] = uint256(stor[_450].field_0) - _435
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (1000000000 * 10^18 * _473) + uint255(stor[_462].field_1) / uint256(stor[_462].field_0)
            s = uint256(stor[_450].field_0)
            s = uint256(stor[_441][address(arg1)].field_0)
            continue 
        _426 = mem[64]
        mem[mem[64]] = 64
        _439 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _553 = mem[(32 * arg2.length) + 128]
        mem[_426 + (32 * mem[96]) + 96] = mem[(32 * arg2.length) + 128]
        mem[_426 + (32 * _439) + 128 len 32 * _553] = mem[(32 * arg2.length) + 160 len 32 * _553]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _426 + (32 * _439) + (32 * _553) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
    else:
        if owner != msg.sender:
            revert with 0, '', 0
        mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 3
        mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 0x3131360000000000000000000000000000000000000000000000000000000000
        if not arg1:
            revert with 0, '', 0
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 352
        mem[(32 * arg2.length) + (32 * arg3.length) + 288] = 3
        mem[(32 * arg2.length) + (32 * arg3.length) + 320] = 0x3131340000000000000000000000000000000000000000000000000000000000
        if arg2.length != arg3.length:
            revert with 0, '', 0
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < arg2.length:
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 0, 50
            _437 = mem[(32 * idx) + (32 * arg2.length) + 160]
            if idx >= mem[96]:
                revert with 0, 50
            _446 = sha3(mem[(32 * idx) + 128], 101)
            if idx >= mem[96]:
                revert with 0, 50
            _455 = sha3(mem[(32 * idx) + 128], 103)
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 111
            _468 = sha3(mem[(32 * idx) + 128], 111)
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 0, 50
            _474 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _478 = mem[64]
            mem[64] = mem[64] + 64
            mem[_478] = 3
            mem[_478 + 32] = '201'
            if not uint256(stor[_468].field_0):
                _480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _480 + 68] = mem[_478 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_480 + 71] = 0
                revert with memory
                  from mem[64]
                   len _480 + -mem[64] + 100
            if -1 < uint255(stor[_468].field_1):
                revert with 0, 17
            _494 = mem[64]
            mem[64] = mem[64] + 64
            mem[_494] = 3
            mem[_494 + 32] = 0x3230330000000000000000000000000000000000000000000000000000000000
            if _474 > -uint255(stor[_468].field_1) - 1 / 1000000000 * 10^18:
                _496 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _496 + 68] = mem[_494 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_496 + 71] = 0
                revert with memory
                  from mem[64]
                   len _496 + -mem[64] + 100
            if _474 and 1000000000 * 10^18 > -1 / _474:
                revert with 0, 17
            if 1000000000 * 10^18 * _474 > !uint255(stor[_468].field_1):
                revert with 0, 17
            if not uint256(stor[_468].field_0):
                revert with 0, 18
            if not (1000000000 * 10^18 * _474) + uint255(stor[_468].field_1) / uint256(stor[_468].field_0):
                _506 = mem[64]
                mem[64] = mem[64] + 64
                mem[_506] = 3
                mem[_506 + 32] = 0x3130320000000000000000000000000000000000000000000000000000000000
                _509 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _509 + 68] = mem[_506 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_509 + 71] = 0
                revert with memory
                  from mem[64]
                   len _509 + -mem[64] + 100
            _510 = mem[64]
            mem[64] = mem[64] + 64
            mem[_510] = 3
            mem[_510 + 32] = 0x3130320000000000000000000000000000000000000000000000000000000000
            if uint256(stor[_446][address(arg1)].field_0) < (1000000000 * 10^18 * _474) + uint255(stor[_468].field_1) / uint256(stor[_468].field_0):
                _512 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _512 + 68] = mem[_510 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_512 + 71] = 0
                revert with memory
                  from mem[64]
                   len _512 + -mem[64] + 100
            if uint256(stor[_446][address(arg1)].field_0) < _437:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            scaledBalanceOf[mem[(32 * idx) + 128]][address(arg1)] = uint256(stor[_446][address(arg1)].field_0) - _437
            if uint256(stor[_455].field_0) < _437:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 103
            scaledTotalSupply[mem[(32 * idx) + 128]] = uint256(stor[_455].field_0) - _437
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (1000000000 * 10^18 * _474) + uint255(stor[_468].field_1) / uint256(stor[_468].field_0)
            s = uint256(stor[_455].field_0)
            s = uint256(stor[_446][address(arg1)].field_0)
            continue 
        _430 = mem[64]
        mem[mem[64]] = 64
        _444 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _554 = mem[(32 * arg2.length) + 128]
        mem[_430 + (32 * mem[96]) + 96] = mem[(32 * arg2.length) + 128]
        mem[_430 + (32 * _444) + 128 len 32 * _554] = mem[(32 * arg2.length) + 160 len 32 * _554]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _430 + (32 * _444) + (32 * _554) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if (32 * arg2.length) + 128 < 96 or (32 * arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 160 < 128 or (32 * arg2.length) + (32 * arg3.length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * arg2.length) + 128] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = (32 * arg2.length) + 160
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 192 < 160 or (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192 > test266151307():
        revert with 0, 65
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len arg4.length] = arg4[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192] = 0
    mem[0] = msg.sender
    mem[32] = 107
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = 3
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224] = 0x3131310000000000000000000000000000000000000000000000000000000000
    if stor107[address(msg.sender)]:
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 256] = 3
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 288] = 0x3131360000000000000000000000000000000000000000000000000000000000
        if not arg1:
            revert with 0, '', 0
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 384
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 320] = 3
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 352] = 0x3131340000000000000000000000000000000000000000000000000000000000
        if arg2.length != arg3.length:
            revert with 0, '', 0
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1081 = sha3(mem[(32 * idx) + 128], 101)
            if idx >= mem[96]:
                revert with 0, 50
            _1090 = sha3(mem[(32 * idx) + 128], 103)
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 111
            _1097 = sha3(mem[(32 * idx) + 128], 111)
            if idx >= mem[(32 * arg2.length) + 128]:
                revert with 0, 50
            _1108 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _1116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1116] = 3
            mem[_1116 + 32] = '201'
            if not uint256(stor[_1097].field_0):
                _1119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _1119 + 68] = mem[_1116 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1119 + 71] = 0
                revert with memory
                  from mem[64]
                   len _1119 + -mem[64] + 100
            if -1 < uint255(stor[_1097].field_1):
                revert with 0, 17
            _1136 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1136] = 3
            mem[_1136 + 32] = 0x3230330000000000000000000000000000000000000000000000000000000000
            if _1108 > -uint255(stor[_1097].field_1) - 1 / 1000000000 * 10^18:
                _1139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _1139 + 68] = mem[_1136 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1139 + 71] = 0
                revert with memory
                  from mem[64]
                   len _1139 + -mem[64] + 100
            if _1108 and 1000000000 * 10^18 > -1 / _1108:
                revert with 0, 17
            if 1000000000 * 10^18 * _1108 > !uint255(stor[_1097].field_1):
                revert with 0, 17
            if not uint256(stor[_1097].field_0):
                revert with 0, 18
            _1160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1160] = 3
            mem[_1160 + 32] = 0x3130310000000000000000000000000000000000000000000000000000000000
            if not (1000000000 * 10^18 * _1108) + uint255(stor[_1097].field_1) / uint256(stor[_1097].field_0):
                _1162 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 3
                idx = 0
                while idx < 3:
                    mem[idx + _1162 + 68] = mem[_1160 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1162 + 71] = 0
                revert with memory
                  from mem[64]
                   len _1162 + -mem[64] + 100
            if uint256(stor[_1081][address(arg1)].field_0) > !((1000000000 * 10^18 * _1108) + uint255(stor[_1097].field_1) / uint256(stor[_1097].field_0)):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            scaledBalanceOf[mem[(32 * idx) + 128]][address(arg1)] = uint256(stor[_1081][address(arg1)].field_0) + ((1000000000 * 10^18 * _1108) + uint255(stor[_1097].field_1) / uint256(stor[_1097].field_0))
            if uint256(stor[_1090].field_0) > !((1000000000 * 10^18 * _1108) + uint255(stor[_1097].field_1) / uint256(stor[_1097].field_0)):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 103
            scaledTotalSupply[mem[(32 * idx) + 128]] = uint256(stor[_1090].field_0) + ((1000000000 * 10^18 * _1108) + uint255(stor[_1097].field_1) / uint256(stor[_1097].field_0))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (1000000000 * 10^18 * _1108) + uint255(stor[_1097].field_1) / uint256(stor[_1097].field_0)
            s = uint256(stor[_1090].field_0)
            s = uint256(stor[_1081][address(arg1)].field_0)
            continue 
        _1071 = mem[64]
        mem[mem[64]] = 64
        _1088 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _1410 = mem[(32 * arg2.length) + 128]
        mem[_1071 + (32 * mem[96]) + 96] = mem[(32 * arg2.length) + 128]
        mem[_1071 + (32 * _1088) + 128 len 32 * _1410] = mem[(32 * arg2.length) + 160 len 32 * _1410]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _1071 + (32 * _1088) + (32 * _1410) + -mem[64] + 128],
                           msg.sender,
                           0,
                           arg1,
        if not ext_code.size(arg1):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1664 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var79001 = mem[96]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _1894 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + (32 * _1664) + 228 len 32 * _1894] = mem[(32 * arg2.length) + 160 len 32 * _1894]
        mem[mem[64] + 132] = (32 * _1664) + (32 * _1894) + 224
        _2120 = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        mem[mem[64] + (32 * _1664) + (32 * _1894) + 228] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        mem[mem[64] + (32 * _1664) + (32 * _1894) + 260 len ceil32(_2120)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len ceil32(_2120)]
        if ceil32(_2120) <= _2120:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, mem[mem[64] + 100], (32 * _1664) + (32 * _1894) + 224, mem[mem[64] + 164 len ceil32(_2120) + (32 * _1664) + (32 * _1894) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _2346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2346] == Mask(32, 224, mem[_2346])
                if Mask(32, 224, mem[_2346]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, '', 0
            if return_data.size < 68:
                revert with 0, '122', 0
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, '122', 0
            _2358 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, '122', 0
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, '122', 0
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, '122', 0
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _2358 + ext_call.return_data[0]:
                revert with 0, '122', 0
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2428 = mem[_2358 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_2358 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_2428)] = mem[_2358 + ext_call.return_data[0] + 32 len ceil32(_2428)]
            if ceil32(_2428) > _2428:
                mem[mem[64] + _2428 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_2428) + 32]
        mem[mem[64] + (32 * _1664) + (32 * _1894) + _2120 + 260] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, mem[mem[64] + 100], (32 * _1664) + (32 * _1894) + 224, mem[mem[64] + 164 len ceil32(_2120) + (32 * _1664) + (32 * _1894) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _2348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2348] == Mask(32, 224, mem[_2348])
            if Mask(32, 224, mem[_2348]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
        if return_data.size < 68:
            revert with 0, '122', 0
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, '122', 0
        _2365 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, '122', 0
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, '122', 0
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, '122', 0
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _2365 + ext_call.return_data[0]:
            revert with 0, '122', 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2452 = mem[_2365 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_2365 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_2452)] = mem[_2365 + ext_call.return_data[0] + 32 len ceil32(_2452)]
        if ceil32(_2452) > _2452:
            mem[mem[64] + _2452 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_2452) + 32]
    if owner != msg.sender:
        revert with 0, '', 0
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 256] = 3
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 288] = 0x3131360000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, '', 0
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 384
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 320] = 3
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 352] = 0x3131340000000000000000000000000000000000000000000000000000000000
    if arg2.length != arg3.length:
        revert with 0, '', 0
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 0, 50
        _1085 = sha3(mem[(32 * idx) + 128], 101)
        if idx >= mem[96]:
            revert with 0, 50
        _1094 = sha3(mem[(32 * idx) + 128], 103)
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 111
        _1102 = sha3(mem[(32 * idx) + 128], 111)
        if idx >= mem[(32 * arg2.length) + 128]:
            revert with 0, 50
        _1112 = mem[(32 * idx) + (32 * arg2.length) + 160]
        _1117 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1117] = 3
        mem[_1117 + 32] = '201'
        if not uint256(stor[_1102].field_0):
            _1121 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 3
            idx = 0
            while idx < 3:
                mem[idx + _1121 + 68] = mem[_1117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1121 + 71] = 0
            revert with memory
              from mem[64]
               len _1121 + -mem[64] + 100
        if -1 < uint255(stor[_1102].field_1):
            revert with 0, 17
        _1137 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1137] = 3
        mem[_1137 + 32] = 0x3230330000000000000000000000000000000000000000000000000000000000
        if _1112 > -uint255(stor[_1102].field_1) - 1 / 1000000000 * 10^18:
            _1141 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 3
            idx = 0
            while idx < 3:
                mem[idx + _1141 + 68] = mem[_1137 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1141 + 71] = 0
            revert with memory
              from mem[64]
               len _1141 + -mem[64] + 100
        if _1112 and 1000000000 * 10^18 > -1 / _1112:
            revert with 0, 17
        if 1000000000 * 10^18 * _1112 > !uint255(stor[_1102].field_1):
            revert with 0, 17
        if not uint256(stor[_1102].field_0):
            revert with 0, 18
        _1161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1161] = 3
        mem[_1161 + 32] = 0x3130310000000000000000000000000000000000000000000000000000000000
        if not (1000000000 * 10^18 * _1112) + uint255(stor[_1102].field_1) / uint256(stor[_1102].field_0):
            _1163 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 3
            idx = 0
            while idx < 3:
                mem[idx + _1163 + 68] = mem[_1161 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1163 + 71] = 0
            revert with memory
              from mem[64]
               len _1163 + -mem[64] + 100
        if uint256(stor[_1085][address(arg1)].field_0) > !((1000000000 * 10^18 * _1112) + uint255(stor[_1102].field_1) / uint256(stor[_1102].field_0)):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        scaledBalanceOf[mem[(32 * idx) + 128]][address(arg1)] = uint256(stor[_1085][address(arg1)].field_0) + ((1000000000 * 10^18 * _1112) + uint255(stor[_1102].field_1) / uint256(stor[_1102].field_0))
        if uint256(stor[_1094].field_0) > !((1000000000 * 10^18 * _1112) + uint255(stor[_1102].field_1) / uint256(stor[_1102].field_0)):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 103
        scaledTotalSupply[mem[(32 * idx) + 128]] = uint256(stor[_1094].field_0) + ((1000000000 * 10^18 * _1112) + uint255(stor[_1102].field_1) / uint256(stor[_1102].field_0))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (1000000000 * 10^18 * _1112) + uint255(stor[_1102].field_1) / uint256(stor[_1102].field_0)
        s = uint256(stor[_1094].field_0)
        s = uint256(stor[_1085][address(arg1)].field_0)
        continue 
    _1075 = mem[64]
    mem[mem[64]] = 64
    _1092 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _1411 = mem[(32 * arg2.length) + 128]
    mem[_1075 + (32 * mem[96]) + 96] = mem[(32 * arg2.length) + 128]
    mem[_1075 + (32 * _1092) + 128 len 32 * _1411] = mem[(32 * arg2.length) + 160 len 32 * _1411]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len _1075 + (32 * _1092) + (32 * _1411) + -mem[64] + 128],
                       msg.sender,
                       0,
                       arg1,
    if not ext_code.size(arg1):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _1665 = mem[96]
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var83001 = mem[96]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _1895 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1895] = mem[(32 * arg2.length) + 160 len 32 * _1895]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1895) + 224
    _2121 = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _1895) + 228] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[mem[64] + (32 * _1665) + (32 * _1895) + 260 len ceil32(_2121)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len ceil32(_2121)]
    if ceil32(_2121) <= _2121:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, mem[mem[64] + 100 len ceil32(_2121) + (32 * _1665) + (32 * _1895) + 160]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _2347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2347] == Mask(32, 224, mem[_2347])
            if Mask(32, 224, mem[_2347]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
        if return_data.size < 68:
            revert with 0, '122', 0
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, '122', 0
        _2360 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, '122', 0
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, '122', 0
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, '122', 0
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _2360 + ext_call.return_data[0]:
            revert with 0, '122', 0
        _2401 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2438 = mem[_2360 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_2360 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_2438)] = mem[_2360 + ext_call.return_data[0] + 32 len ceil32(_2438)]
        if ceil32(_2438) <= _2438:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_2438) + 32]
        mem[mem[64] + _2438 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2438) + _2401 + -mem[64] + 68
    mem[mem[64] + (32 * _1665) + (32 * _1895) + _2121 + 260] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, mem[mem[64] + 100 len ceil32(_2121) + (32 * _1665) + (32 * _1895) + 160]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _2349 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2349] == Mask(32, 224, mem[_2349])
        if Mask(32, 224, mem[_2349]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, '', 0
    if return_data.size < 68:
        revert with 0, '122', 0
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, '122', 0
    _2370 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, '122', 0
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, '122', 0
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, '122', 0
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _2370 + ext_call.return_data[0]:
        revert with 0, '122', 0
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _2461 = mem[_2370 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_2370 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_2461)] = mem[_2370 + ext_call.return_data[0] + 32 len ceil32(_2461)]
    if ceil32(_2461) > _2461:
        mem[mem[64] + _2461 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_2461) + 32]
}



}
