contract main {




// =====================  Runtime code  =====================


const name = 'Wrapped RARITY'

const decimals = 18

const symbol = 'WRAR'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor3;
array of uint256 stor4;
mapping of uint8 stor5;
address kittyCoreAddress;
address stor7;

function totalSupply() {
    return totalSupply
}

function kittyCoreAddress() {
    return kittyCoreAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function batchRemoveWithdrawnKittiesFromStorage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x6e796f752061726520747279696e6720746f2062617463682072656d6f7665206d6f726520736c6f7473207468616e20657869737420696e207468652061727261,
                    mem[229 len 31]
    idx = 0
    s = stor4.length
    while idx < arg1:
        require 1 <= s
        require s - 1 < stor4.length
        mem[0] = stor4[s]
        mem[32] = 5
        if stor5[stor4[s]]:
        stor4.length--
        if stor4.length > stor4.length - 1:
            mem[0] = 4
            t = sha3(4) + stor4.length - 1
            while sha3(4) + stor4.length > t:
                stor[t] = 0
                t = t + 1
                continue 
        idx = idx + 1
        s = s - 1
        continue 
}

function depositKittiesAndMintTokens(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    stor3++
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x74796f75206d757374207375626d697420616e2061727261792077697468206174206c65617374206f6e6520656c656d656e,
                    mem[214 len 14]
    idx = 0
    while idx < arg1.length:
        require ext_code.size(stor7)
        staticcall stor7.getKitty(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[96 len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 320
        require ext_code.size(stor7)
        staticcall stor7.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'you do not own this cat'
        require ext_code.size(stor7)
        staticcall stor7.kittyIndexToApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != this.address:
            revert with 0, 
                        32,
                        61,
                        0x79796f75206d75737420617070726f76652829207468697320636f6e7472616374206265666f726520796f752063616e206465706f7369742061206361,
                        ext_call.return_data[129 len 3]
        if ext_call.return_data[256]:
            revert with 0, 'this cat must be generation 0'
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4.length++
        stor4[stor4.length] = cd[((32 * idx) + arg1 + 36)]
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        stor5[cd[((32 * idx) + arg1 + 36)]] = 1
        mem[96] = cd[((32 * idx) + arg1 + 36)]
        emit 0x999fa95b: cd[((32 * idx) + arg1 + 36)]
        idx = idx + 1
        continue 
    if not arg1.length:
        require msg.sender
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, 0, msg.sender);
    else:
        require arg1.length
        require 10^18 * arg1.length / arg1.length == 10^18
        require msg.sender
        require totalSupply + (10^18 * arg1.length) >= totalSupply
        totalSupply += 10^18 * arg1.length
        require balanceOf[address(msg.sender)] + (10^18 * arg1.length) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * arg1.length
        emit Transfer((10^18 * arg1.length), 0, msg.sender);
    require stor3 == stor3
}

function burnTokensAndWithdrawKitties(uint256[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    stor3++
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    83,
                    0x74796f7520646964206e6f742070726f7669646520612064657374696e6174696f6e206164647265737320666f722065616368206f6620746865206361747320796f75207769736820746f2077697468647261,
                    mem[247 len 13]
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x74796f75206d757374207375626d697420616e2061727261792077697468206174206c65617374206f6e6520656c656d656e,
                    mem[214 len 14]
    if not arg1.length:
        if balanceOf[address(msg.sender)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        62,
                        0x77796f7520646f206e6f74206f776e20656e6f75676820746f6b656e7320746f2077697468647261772074686973206d616e792045524337323120636174,
                        mem[226 len 2]
    else:
        require arg1.length
        require 10^18 * arg1.length / arg1.length == 10^18
        if balanceOf[address(msg.sender)] < 10^18 * arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        62,
                        0x77796f7520646f206e6f74206f776e20656e6f75676820746f6b656e7320746f2077697468647261772074686973206d616e792045524337323120636174,
                        mem[226 len 2]
    if not arg1.length:
        require msg.sender
        require 0 <= totalSupply
        require 0 <= balanceOf[address(msg.sender)]
        mem[0] = msg.sender
        emit Transfer(0, msg.sender, 0);
    else:
        require arg1.length
        require 10^18 * arg1.length / arg1.length == 10^18
        require msg.sender
        require 10^18 * arg1.length <= totalSupply
        totalSupply += -1 * 10^18 * arg1.length
        require 10^18 * arg1.length <= balanceOf[address(msg.sender)]
        mem[0] = msg.sender
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg1.length
        emit Transfer((10^18 * arg1.length), msg.sender, 0);
    idx = 0
    while idx < arg1.length:
        if cd[((32 * idx) + arg1 + 36)]:
            if bool(stor5[cd[((32 * idx) + arg1 + 36)]]) != 1:
                revert with 0, 32, 37, 0xfe74686973206b697474792068617320616c7265616479206265656e207769746864726177, mem[201 len 27]
            require ext_code.size(stor7)
            staticcall stor7.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != this.address:
                revert with 0, 32, 34, 0x7374686520636f6e747261637420646f6573206e6f74206f776e2074686973206361, mem[198 len 30]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 5
            stor5[cd[((32 * idx) + arg1 + 36)]] = 0
            require idx < arg2.length
            mem[100] = address(cd[((32 * idx) + arg2 + 36)])
            mem[132] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = cd[((32 * idx) + arg1 + 36)]
            emit 0x2f467b67: cd[((32 * idx) + arg1 + 36)]
        else:
            if stor4.length <= 0:
                revert with 0, 'there are no cats in the array'
            require stor4.length - 1 < stor4.length
            stor4.length--
            if stor4.length <= stor4.length - 1:
                mem[0] = stor4[stor4.length]
                s = stor4[stor4.length]
                while not stor5[stor4[stor4.length]]:
                    require stor4.length - 1 < stor4.length
                    stor4.length--
                    if stor4.length > stor4.length - 1:
                        mem[0] = 4
                        idx = sha3(mem[0]) + stor4.length - 1
                        while sha3(4) + stor4.length > idx:
                            stor[idx] = 0
                            mem[0] = s
                            mem[32] = 5
                            idx = idx + 1
                            continue 
                    mem[0] = stor4[stor4.length]
                    mem[32] = 5
                    s = stor4[stor4.length]
                    continue 
                mem[0] = s
                mem[32] = 5
                stor5[s] = 0
                require s < arg2.length
                mem[100] = address(cd[((32 * s) + arg2 + 36)])
                mem[132] = s
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * s) + arg2 + 36)]), s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = s
                emit 0x2f467b67: s
                s = s + 1
                continue 
            s = sha3(4) + stor4.length - 1
            while sha3(4) + stor4.length > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[0] = stor4[stor4.length]
            s = stor4[stor4.length]
            while not stor5[stor4[stor4.length]]:
                require stor4.length - 1 < stor4.length
                stor4.length--
                if stor4.length > stor4.length - 1:
                    mem[0] = 4
                    idx = sha3(mem[0]) + stor4.length - 1
                    while sha3(4) + stor4.length > idx:
                        stor[idx] = 0
                        mem[0] = s
                        mem[32] = 5
                        idx = idx + 1
                        continue 
                mem[0] = stor4[stor4.length]
                mem[32] = 5
                s = stor4[stor4.length]
                continue 
            mem[0] = s
            mem[32] = 5
            stor5[s] = 0
            require idx < arg2.length
            mem[100] = address(cd[((32 * idx) + arg2 + 36)])
            mem[132] = s
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = s
            emit 0x2f467b67: s
        idx = idx + 1
        continue 
    require stor3 == stor3
}



}
