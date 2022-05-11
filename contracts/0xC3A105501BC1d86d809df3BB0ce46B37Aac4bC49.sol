contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address tokenAddress;
uint256 stor7;
uint256 tokenId;
uint256 stor11;
address stor15;

function getTokenId() payable {
    return tokenId
}

function getTokenAddress() payable {
    return tokenAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function getReserves() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
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
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_32816be1(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == uint8(arg5)
    require arg6 == address(arg6)
    stor7 = this.address or Mask(96, 160, stor7)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if (32 * arg4.length) + 160 < 128 or (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    idx = 0
    while idx < arg4.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ZERO_QUANTITY'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'INSUFFICIENT_ERC1155_BALANCE'
    if not decimals:
        if stor11 and 1 > -1 / stor11:
            revert with 0, 17
        if arg1 and stor11 > -1 / arg1:
            revert with 0, 17
        require ext_code.size(stor15)
        staticcall stor15.0xeee1ad80 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg1 * stor11 < 0:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf242432a with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), tokenId, arg1, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(arg1 * stor11):
                revert with 0, 17
            totalSupply += arg1 * stor11
            if balanceOf[address(msg.sender)] > !(arg1 * stor11):
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1 * stor11
            emit Transfer((arg1 * stor11), 0, msg.sender);
            if not stor15:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -1:
                revert with 0, 17
            if balanceOf[stor15] > -1:
                revert with 0, 17
            emit Transfer(0, 0, stor15);
        else:
            if arg1 * stor11 < arg1 * stor11 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf242432a with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), tokenId, arg1, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !((arg1 * stor11) - (arg1 * stor11 / ext_call.return_data[0])):
                revert with 0, 17
            totalSupply = totalSupply + (arg1 * stor11) - (arg1 * stor11 / ext_call.return_data[0])
            if balanceOf[address(msg.sender)] > !((arg1 * stor11) - (arg1 * stor11 / ext_call.return_data[0])):
                revert with 0, 17
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (arg1 * stor11) - (arg1 * stor11 / ext_call.return_data[0])
            emit Transfer(((arg1 * stor11) - (arg1 * stor11 / ext_call.return_data[0])), 0, msg.sender);
            if not stor15:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(arg1 * stor11 / ext_call.return_data[0]):
                revert with 0, 17
            totalSupply += arg1 * stor11 / ext_call.return_data[0]
            if balanceOf[stor15] > !(arg1 * stor11 / ext_call.return_data[0]):
                revert with 0, 17
            balanceOf[stor15] += arg1 * stor11 / ext_call.return_data[0]
            emit Transfer((arg1 * stor11 / ext_call.return_data[0]), 0, stor15);
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 0, 17
            if stor11 and 10^decimals > -1 / stor11:
                revert with 0, 17
            if arg1 and stor11 * 10^decimals > -1 / arg1:
                revert with 0, 17
            require ext_code.size(stor15)
            staticcall stor15.0xeee1ad80 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 * stor11 * 10^decimals < 0:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0xf242432a with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), tokenId, arg1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg1 * stor11 * 10^decimals):
                    revert with 0, 17
                totalSupply += arg1 * stor11 * 10^decimals
                if balanceOf[address(msg.sender)] > !(arg1 * stor11 * 10^decimals):
                    revert with 0, 17
                balanceOf[address(msg.sender)] += arg1 * stor11 * 10^decimals
                emit Transfer((arg1 * stor11 * 10^decimals), 0, msg.sender);
                if not stor15:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[stor15] > -1:
                    revert with 0, 17
                emit Transfer(0, 0, stor15);
            else:
                if arg1 * stor11 * 10^decimals < arg1 * stor11 * 10^decimals / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0xf242432a with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), tokenId, arg1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((arg1 * stor11 * 10^decimals) - (arg1 * stor11 * 10^decimals / ext_call.return_data[0])):
                    revert with 0, 17
                totalSupply = totalSupply + (arg1 * stor11 * 10^decimals) - (arg1 * stor11 * 10^decimals / ext_call.return_data[0])
                if balanceOf[address(msg.sender)] > !((arg1 * stor11 * 10^decimals) - (arg1 * stor11 * 10^decimals / ext_call.return_data[0])):
                    revert with 0, 17
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (arg1 * stor11 * 10^decimals) - (arg1 * stor11 * 10^decimals / ext_call.return_data[0])
                emit Transfer(((arg1 * stor11 * 10^decimals) - (arg1 * stor11 * 10^decimals / ext_call.return_data[0])), 0, msg.sender);
                if not stor15:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg1 * stor11 * 10^decimals / ext_call.return_data[0]):
                    revert with 0, 17
                totalSupply += arg1 * stor11 * 10^decimals / ext_call.return_data[0]
                if balanceOf[stor15] > !(arg1 * stor11 * 10^decimals / ext_call.return_data[0]):
                    revert with 0, 17
                balanceOf[stor15] += arg1 * stor11 * 10^decimals / ext_call.return_data[0]
                emit Transfer((arg1 * stor11 * 10^decimals / ext_call.return_data[0]), 0, stor15);
        else:
            if var30005 > 1:
                s = var30001
                t = var30002
                u = var30005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if stor11 and s * s * t > -1 / stor11:
                            revert with 0, 17
                        if arg1 and stor11 * s * s * t > -1 / arg1:
                            revert with 0, 17
                        require ext_code.size(stor15)
                        staticcall stor15.0xeee1ad80 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if arg1 * stor11 * s * s * t < 0:
                                revert with 0, 17
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenId, arg1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(arg1 * stor11 * s * s * t):
                                revert with 0, 17
                            totalSupply += arg1 * stor11 * s * s * t
                            if balanceOf[address(msg.sender)] > !(arg1 * stor11 * s * s * t):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] += arg1 * stor11 * s * s * t
                            emit Transfer((arg1 * stor11 * s * s * t), 0, msg.sender);
                            if not stor15:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -1:
                                revert with 0, 17
                            if balanceOf[stor15] > -1:
                                revert with 0, 17
                            emit Transfer(0, 0, stor15);
                        else:
                            if arg1 * stor11 * s * s * t < arg1 * stor11 * s * s * t / ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenId, arg1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((arg1 * stor11 * s * s * t) - (arg1 * stor11 * s * s * t / ext_call.return_data[0])):
                                revert with 0, 17
                            totalSupply = totalSupply + (arg1 * stor11 * s * s * t) - (arg1 * stor11 * s * s * t / ext_call.return_data[0])
                            if balanceOf[address(msg.sender)] > !((arg1 * stor11 * s * s * t) - (arg1 * stor11 * s * s * t / ext_call.return_data[0])):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (arg1 * stor11 * s * s * t) - (arg1 * stor11 * s * s * t / ext_call.return_data[0])
                            emit Transfer(((arg1 * stor11 * s * s * t) - (arg1 * stor11 * s * s * t / ext_call.return_data[0])), 0, msg.sender);
                            if not stor15:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(arg1 * stor11 * s * s * t / ext_call.return_data[0]):
                                revert with 0, 17
                            totalSupply += arg1 * stor11 * s * s * t / ext_call.return_data[0]
                            if balanceOf[stor15] > !(arg1 * stor11 * s * s * t / ext_call.return_data[0]):
                                revert with 0, 17
                            balanceOf[stor15] += arg1 * stor11 * s * s * t / ext_call.return_data[0]
                            emit Transfer((arg1 * stor11 * s * s * t / ext_call.return_data[0]), 0, stor15);
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if stor11 and s * s * s * t > -1 / stor11:
                            revert with 0, 17
                        if arg1 and stor11 * s * s * s * t > -1 / arg1:
                            revert with 0, 17
                        require ext_code.size(stor15)
                        staticcall stor15.0xeee1ad80 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if arg1 * stor11 * s * s * s * t < 0:
                                revert with 0, 17
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenId, arg1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(arg1 * stor11 * s * s * s * t):
                                revert with 0, 17
                            totalSupply += arg1 * stor11 * s * s * s * t
                            if balanceOf[address(msg.sender)] > !(arg1 * stor11 * s * s * s * t):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] += arg1 * stor11 * s * s * s * t
                            emit Transfer((arg1 * stor11 * s * s * s * t), 0, msg.sender);
                            if not stor15:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -1:
                                revert with 0, 17
                            if balanceOf[stor15] > -1:
                                revert with 0, 17
                            emit Transfer(0, 0, stor15);
                        else:
                            if arg1 * stor11 * s * s * s * t < arg1 * stor11 * s * s * s * t / ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenId, arg1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((arg1 * stor11 * s * s * s * t) - (arg1 * stor11 * s * s * s * t / ext_call.return_data[0])):
                                revert with 0, 17
                            totalSupply = totalSupply + (arg1 * stor11 * s * s * s * t) - (arg1 * stor11 * s * s * s * t / ext_call.return_data[0])
                            if balanceOf[address(msg.sender)] > !((arg1 * stor11 * s * s * s * t) - (arg1 * stor11 * s * s * s * t / ext_call.return_data[0])):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (arg1 * stor11 * s * s * s * t) - (arg1 * stor11 * s * s * s * t / ext_call.return_data[0])
                            emit Transfer(((arg1 * stor11 * s * s * s * t) - (arg1 * stor11 * s * s * s * t / ext_call.return_data[0])), 0, msg.sender);
                            if not stor15:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(arg1 * stor11 * s * s * s * t / ext_call.return_data[0]):
                                revert with 0, 17
                            totalSupply += arg1 * stor11 * s * s * s * t / ext_call.return_data[0]
                            if balanceOf[stor15] > !(arg1 * stor11 * s * s * s * t / ext_call.return_data[0]):
                                revert with 0, 17
                            balanceOf[stor15] += arg1 * stor11 * s * s * s * t / ext_call.return_data[0]
                            emit Transfer((arg1 * stor11 * s * s * s * t / ext_call.return_data[0]), 0, stor15);
                revert with 0, 17
            if var30002 > -1 / var30001:
                revert with 0, 17
            if stor11 and var30001 * var30002 > -1 / stor11:
                revert with 0, 17
            if arg1 and stor11 * var30001 * var30002 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(stor15)
            staticcall stor15.0xeee1ad80 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 * stor11 * var30001 * var30002 < 0:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0xf242432a with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), tokenId, arg1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg1 * stor11 * var30001 * var30002):
                    revert with 0, 17
                totalSupply += arg1 * stor11 * var30001 * var30002
                if balanceOf[address(msg.sender)] > !(arg1 * stor11 * var30001 * var30002):
                    revert with 0, 17
                balanceOf[address(msg.sender)] += arg1 * stor11 * var30001 * var30002
                emit Transfer((arg1 * stor11 * var30001 * var30002), 0, msg.sender);
                if not stor15:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[stor15] > -1:
                    revert with 0, 17
                emit Transfer(0, 0, stor15);
            else:
                if arg1 * stor11 * var30001 * var30002 < arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0xf242432a with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), tokenId, arg1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((arg1 * stor11 * var30001 * var30002) - (arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0])):
                    revert with 0, 17
                totalSupply = totalSupply + (arg1 * stor11 * var30001 * var30002) - (arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0])
                if balanceOf[address(msg.sender)] > !((arg1 * stor11 * var30001 * var30002) - (arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0])):
                    revert with 0, 17
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (arg1 * stor11 * var30001 * var30002) - (arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0])
                emit Transfer(((arg1 * stor11 * var30001 * var30002) - (arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0])), 0, msg.sender);
                if not stor15:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0]):
                    revert with 0, 17
                totalSupply += arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0]
                if balanceOf[stor15] > !(arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0]):
                    revert with 0, 17
                balanceOf[stor15] += arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0]
                emit Transfer((arg1 * stor11 * var30001 * var30002 / ext_call.return_data[0]), 0, stor15);
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ZERO_QUANTITY'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'INSUFFICIENT_RESERVES'
    if not decimals:
        if stor11 and 1 > -1 / stor11:
            revert with 0, 17
        if arg1 and stor11 > -1 / arg1:
            revert with 0, 17
        if balanceOf[address(msg.sender)] < arg1 * stor11:
            revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
        if not decimals:
            if stor11 and 1 > -1 / stor11:
                revert with 0, 17
            if arg1 and stor11 > -1 / arg1:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg1 * stor11:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] += -1 * arg1 * stor11
            if totalSupply < arg1 * stor11:
                revert with 0, 17
            totalSupply += -1 * arg1 * stor11
            emit Transfer((arg1 * stor11), msg.sender, 0);
        else:
            if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                if 10^decimals > -1:
                    revert with 0, 17
                if stor11 and 10^decimals > -1 / stor11:
                    revert with 0, 17
                if arg1 and stor11 * 10^decimals > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg1 * stor11 * 10^decimals:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * 10^decimals
                if totalSupply < arg1 * stor11 * 10^decimals:
                    revert with 0, 17
                totalSupply += -1 * arg1 * stor11 * 10^decimals
                emit Transfer((arg1 * stor11 * 10^decimals), msg.sender, 0);
            else:
                if var47005 > 1:
                    s = var47001
                    t = var47002
                    u = var47005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if stor11 and s * s * t > -1 / stor11:
                                revert with 0, 17
                            if arg1 and stor11 * s * s * t > -1 / arg1:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: burn from the zero address'
                            if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * t:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * t
                            if totalSupply < arg1 * stor11 * s * s * t:
                                revert with 0, 17
                            totalSupply += -1 * arg1 * stor11 * s * s * t
                            emit Transfer((arg1 * stor11 * s * s * t), msg.sender, 0);
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if stor11 and s * s * s * t > -1 / stor11:
                                revert with 0, 17
                            if arg1 and stor11 * s * s * s * t > -1 / arg1:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: burn from the zero address'
                            if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * s * t:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * s * t
                            if totalSupply < arg1 * stor11 * s * s * s * t:
                                revert with 0, 17
                            totalSupply += -1 * arg1 * stor11 * s * s * s * t
                            emit Transfer((arg1 * stor11 * s * s * s * t), msg.sender, 0);
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xf242432a with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, tokenId, arg1, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 17
                if var47002 > -1 / var47001:
                    revert with 0, 17
                if stor11 and var47001 * var47002 > -1 / stor11:
                    revert with 0, 17
                if arg1 and stor11 * var47001 * var47002 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg1 * stor11 * var47001 * var47002:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * var47001 * var47002
                if totalSupply < arg1 * stor11 * var47001 * var47002:
                    revert with 0, 17
                totalSupply += -1 * arg1 * stor11 * var47001 * var47002
                emit Transfer((arg1 * stor11 * var47001 * var47002), msg.sender, 0);
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 0, 17
            if stor11 and 10^decimals > -1 / stor11:
                revert with 0, 17
            if arg1 and stor11 * 10^decimals > -1 / arg1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < arg1 * stor11 * 10^decimals:
                revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
            if not decimals:
                if stor11 and 1 > -1 / stor11:
                    revert with 0, 17
                if arg1 and stor11 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg1 * stor11:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] += -1 * arg1 * stor11
                if totalSupply < arg1 * stor11:
                    revert with 0, 17
                totalSupply += -1 * arg1 * stor11
                emit Transfer((arg1 * stor11), msg.sender, 0);
            else:
                if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                    if 10^decimals > -1:
                        revert with 0, 17
                    if stor11 and 10^decimals > -1 / stor11:
                        revert with 0, 17
                    if arg1 and stor11 * 10^decimals > -1 / arg1:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1 * stor11 * 10^decimals:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * 10^decimals
                    if totalSupply < arg1 * stor11 * 10^decimals:
                        revert with 0, 17
                    totalSupply += -1 * arg1 * stor11 * 10^decimals
                    emit Transfer((arg1 * stor11 * 10^decimals), msg.sender, 0);
                else:
                    if var53005 > 1:
                        s = var53001
                        t = var53002
                        u = var53005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor11 and s * s * t > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * s * s * t > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * t:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * t
                                if totalSupply < arg1 * stor11 * s * s * t:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * s * s * t
                                emit Transfer((arg1 * stor11 * s * s * t), msg.sender, 0);
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor11 and s * s * s * t > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * s * s * s * t > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * s * t:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * s * t
                                if totalSupply < arg1 * stor11 * s * s * s * t:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * s * s * s * t
                                emit Transfer((arg1 * stor11 * s * s * s * t), msg.sender, 0);
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, tokenId, arg1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 17
                    if var53002 > -1 / var53001:
                        revert with 0, 17
                    if stor11 and var53001 * var53002 > -1 / stor11:
                        revert with 0, 17
                    if arg1 and stor11 * var53001 * var53002 > -1 / arg1:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1 * stor11 * var53001 * var53002:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * var53001 * var53002
                    if totalSupply < arg1 * stor11 * var53001 * var53002:
                        revert with 0, 17
                    totalSupply += -1 * arg1 * stor11 * var53001 * var53002
                    emit Transfer((arg1 * stor11 * var53001 * var53002), msg.sender, 0);
        else:
            if var31005 > 1:
                s = var31001
                t = var31002
                u = var31005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if stor11 and s * s * t > -1 / stor11:
                            revert with 0, 17
                        if arg1 and stor11 * s * s * t > -1 / arg1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * t:
                            revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
                        if not decimals:
                            if stor11 and 1 > -1 / stor11:
                                revert with 0, 17
                            if arg1 and stor11 > -1 / arg1:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: burn from the zero address'
                            if balanceOf[address(msg.sender)] < arg1 * stor11:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11
                            if totalSupply < arg1 * stor11:
                                revert with 0, 17
                            totalSupply += -1 * arg1 * stor11
                            emit Transfer((arg1 * stor11), msg.sender, 0);
                        else:
                            if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                if 10^decimals > -1:
                                    revert with 0, 17
                                if stor11 and 10^decimals > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * 10^decimals > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * 10^decimals:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * 10^decimals
                                if totalSupply < arg1 * stor11 * 10^decimals:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * 10^decimals
                                emit Transfer((arg1 * stor11 * 10^decimals), msg.sender, 0);
                            else:
                                if var63005 > 1:
                                    s = var63001
                                    t = var63002
                                    u = var63005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if stor11 and s * s * t > -1 / stor11:
                                                revert with 0, 17
                                            if arg1 and stor11 * s * s * t > -1 / arg1:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: burn from the zero address'
                                            if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * t:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * t
                                            if totalSupply < arg1 * stor11 * s * s * t:
                                                revert with 0, 17
                                            totalSupply += -1 * arg1 * stor11 * s * s * t
                                            emit Transfer((arg1 * stor11 * s * s * t), msg.sender, 0);
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if stor11 and s * s * s * t > -1 / stor11:
                                                revert with 0, 17
                                            if arg1 and stor11 * s * s * s * t > -1 / arg1:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: burn from the zero address'
                                            if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * s * t:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * s * t
                                            if totalSupply < arg1 * stor11 * s * s * s * t:
                                                revert with 0, 17
                                            totalSupply += -1 * arg1 * stor11 * s * s * s * t
                                            emit Transfer((arg1 * stor11 * s * s * s * t), msg.sender, 0);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xf242432a with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, tokenId, arg1, 160, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 17
                                if var63002 > -1 / var63001:
                                    revert with 0, 17
                                if stor11 and var63001 * var63002 > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * var63001 * var63002 > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * var63001 * var63002:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * var63001 * var63002
                                if totalSupply < arg1 * stor11 * var63001 * var63002:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * var63001 * var63002
                                emit Transfer((arg1 * stor11 * var63001 * var63002), msg.sender, 0);
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if stor11 and s * s * s * t > -1 / stor11:
                            revert with 0, 17
                        if arg1 and stor11 * s * s * s * t > -1 / arg1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * s * t:
                            revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
                        if not decimals:
                            if stor11 and 1 > -1 / stor11:
                                revert with 0, 17
                            if arg1 and stor11 > -1 / arg1:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: burn from the zero address'
                            if balanceOf[address(msg.sender)] < arg1 * stor11:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11
                            if totalSupply < arg1 * stor11:
                                revert with 0, 17
                            totalSupply += -1 * arg1 * stor11
                            emit Transfer((arg1 * stor11), msg.sender, 0);
                        else:
                            if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                                if 10^decimals > -1:
                                    revert with 0, 17
                                if stor11 and 10^decimals > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * 10^decimals > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * 10^decimals:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * 10^decimals
                                if totalSupply < arg1 * stor11 * 10^decimals:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * 10^decimals
                                emit Transfer((arg1 * stor11 * 10^decimals), msg.sender, 0);
                            else:
                                if var64005 > 1:
                                    s = var64001
                                    t = var64002
                                    u = var64005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if stor11 and s * s * t > -1 / stor11:
                                                revert with 0, 17
                                            if arg1 and stor11 * s * s * t > -1 / arg1:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: burn from the zero address'
                                            if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * t:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * t
                                            if totalSupply < arg1 * stor11 * s * s * t:
                                                revert with 0, 17
                                            totalSupply += -1 * arg1 * stor11 * s * s * t
                                            emit Transfer((arg1 * stor11 * s * s * t), msg.sender, 0);
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if stor11 and s * s * s * t > -1 / stor11:
                                                revert with 0, 17
                                            if arg1 and stor11 * s * s * s * t > -1 / arg1:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: burn from the zero address'
                                            if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * s * t:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * s * t
                                            if totalSupply < arg1 * stor11 * s * s * s * t:
                                                revert with 0, 17
                                            totalSupply += -1 * arg1 * stor11 * s * s * s * t
                                            emit Transfer((arg1 * stor11 * s * s * s * t), msg.sender, 0);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xf242432a with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, tokenId, arg1, 160, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 17
                                if var64002 > -1 / var64001:
                                    revert with 0, 17
                                if stor11 and var64001 * var64002 > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * var64001 * var64002 > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * var64001 * var64002:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * var64001 * var64002
                                if totalSupply < arg1 * stor11 * var64001 * var64002:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * var64001 * var64002
                                emit Transfer((arg1 * stor11 * var64001 * var64002), msg.sender, 0);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xf242432a with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, tokenId, arg1, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 17
            if var31002 > -1 / var31001:
                revert with 0, 17
            if stor11 and var31001 * var31002 > -1 / stor11:
                revert with 0, 17
            if arg1 and stor11 * var31001 * var31002 > -1 / arg1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < arg1 * stor11 * var31001 * var31002:
                revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
            if not decimals:
                if stor11 and 1 > -1 / stor11:
                    revert with 0, 17
                if arg1 and stor11 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg1 * stor11:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] += -1 * arg1 * stor11
                if totalSupply < arg1 * stor11:
                    revert with 0, 17
                totalSupply += -1 * arg1 * stor11
                emit Transfer((arg1 * stor11), msg.sender, 0);
            else:
                if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                    if 10^decimals > -1:
                        revert with 0, 17
                    if stor11 and 10^decimals > -1 / stor11:
                        revert with 0, 17
                    if arg1 and stor11 * 10^decimals > -1 / arg1:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1 * stor11 * 10^decimals:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * 10^decimals
                    if totalSupply < arg1 * stor11 * 10^decimals:
                        revert with 0, 17
                    totalSupply += -1 * arg1 * stor11 * 10^decimals
                    emit Transfer((arg1 * stor11 * 10^decimals), msg.sender, 0);
                else:
                    if var58005 > 1:
                        s = var58001
                        t = var58002
                        u = var58005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if stor11 and s * s * t > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * s * s * t > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * t:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * t
                                if totalSupply < arg1 * stor11 * s * s * t:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * s * s * t
                                emit Transfer((arg1 * stor11 * s * s * t), msg.sender, 0);
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if stor11 and s * s * s * t > -1 / stor11:
                                    revert with 0, 17
                                if arg1 and stor11 * s * s * s * t > -1 / arg1:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg1 * stor11 * s * s * s * t:
                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * s * s * s * t
                                if totalSupply < arg1 * stor11 * s * s * s * t:
                                    revert with 0, 17
                                totalSupply += -1 * arg1 * stor11 * s * s * s * t
                                emit Transfer((arg1 * stor11 * s * s * s * t), msg.sender, 0);
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, tokenId, arg1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 17
                    if var58002 > -1 / var58001:
                        revert with 0, 17
                    if stor11 and var58001 * var58002 > -1 / stor11:
                        revert with 0, 17
                    if arg1 and stor11 * var58001 * var58002 > -1 / arg1:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1 * stor11 * var58001 * var58002:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] += -1 * arg1 * stor11 * var58001 * var58002
                    if totalSupply < arg1 * stor11 * var58001 * var58002:
                        revert with 0, 17
                    totalSupply += -1 * arg1 * stor11 * var58001 * var58002
                    emit Transfer((arg1 * stor11 * var58001 * var58002), msg.sender, 0);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf242432a with:
         gas gas_remaining wei
        args address(this.address), msg.sender, tokenId, arg1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
