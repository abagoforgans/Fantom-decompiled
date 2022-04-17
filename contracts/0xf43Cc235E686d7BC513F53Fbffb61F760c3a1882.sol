contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 circulatingSupply;
address treasuryAddress;
address sub_d2691b9dAddress;
uint256 sub_32bf088e;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_32bf088e(?) payable {
    return sub_32bf088e
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function circulatingSupply() payable {
    return circulatingSupply
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_c6782e16(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function sub_d2691b9d(?) payable {
    return sub_d2691b9dAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function limit() payable {
    return (1337 * circulatingSupply / 100000)
}

function sub_f8718858(?) payable {
    circulatingSupply = totalSupply - balanceOf[stor5]
}

function setTax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        revert with 0, 'thou ain't treasury'
    sub_32bf088e = arg1
}

function sub_f6b7c04b(?) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        revert with 0, 'thou ain't treasury'
    sub_d2691b9dAddress = arg1
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'Thee don't posess enough $ELITE'
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
}

function sub_2d5d422e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if treasuryAddress != msg.sender:
        revert with 0, 'Only the treasury can r!'
    name[] = Array(len=arg1.length, data=arg1[all])
}

function sub_198aa9da(?) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x374f6e6c79207468652074726561737572792063616e2063757420616c6c6f77656420616464726573736573,
                    mem[208 len 20]
    stor10[address(arg1)] = 0
}

function sub_e7d0a860(?) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x214f6e6c79207468652074726561737572792063616e2061646420616c6c6f77656420616464726573736573,
                    mem[208 len 20]
    stor10[address(arg1)] = 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe4f6e6c79207468652074726561737572792063616e2074726561737572652074686520747265617375726573,
                    mem[209 len 19]
    if not arg1:
        call treasuryAddress with:
           value arg2 wei
             gas gas_remaining wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args treasuryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    circulatingSupply = totalSupply - balanceOf[stor5]
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > 1337 * circulatingSupply / 100000:
        if not stor10[address(arg1)]:
            revert with 0, 'You can not send big moves'
    if not stor10[address(arg2)]:
        if balanceOf[address(arg2)] + arg3 > 1337 * circulatingSupply / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x215768616c696e6720757020697320756e6865616c74687920666f722046616e746f6d204f70657261202320313333,
                        mem[211 len 17]
    if arg3 <= 10^9:
        balanceOf[address(arg2)] += arg3
        emit Transfer(0, arg1, sub_d2691b9dAddress);
        emit Transfer(arg3, arg1, arg2);
    else:
        balanceOf[stor6] += arg3 * sub_32bf088e / 10^6
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_32bf088e / 10^6)
        emit Transfer((arg3 * sub_32bf088e / 10^6), arg1, sub_d2691b9dAddress);
        emit Transfer((arg3 - (arg3 * sub_32bf088e / 10^6)), arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    circulatingSupply = totalSupply - balanceOf[stor5]
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    if arg2 > 1337 * circulatingSupply / 100000:
        if not stor10[address(msg.sender)]:
            revert with 0, 'You can not send big moves'
    if not stor10[address(arg1)]:
        if balanceOf[address(arg1)] + arg2 > 1337 * circulatingSupply / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x215768616c696e6720757020697320756e6865616c74687920666f722046616e746f6d204f70657261202320313333,
                        mem[211 len 17]
    if arg2 <= 10^9:
        balanceOf[address(arg1)] += arg2
        emit Transfer(0, msg.sender, sub_d2691b9dAddress);
        emit Transfer(arg2, msg.sender, arg1);
    else:
        balanceOf[stor6] += arg2 * sub_32bf088e / 10^6
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_32bf088e / 10^6)
        emit Transfer((arg2 * sub_32bf088e / 10^6), msg.sender, sub_d2691b9dAddress);
        emit Transfer((arg2 - (arg2 * sub_32bf088e / 10^6)), msg.sender, arg1);
    return 1
}



}
