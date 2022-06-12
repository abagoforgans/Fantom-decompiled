contract main {




// =====================  Runtime code  =====================


const name = 'Wrapped Rarity'

const decimals = 18

const symbol = 'WRAR'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor3;
array of uint256 stor4;
mapping of uint8 stor5;
address sub_fa5aba3fAddress;
address stor7;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_fa5aba3f(?) {
    return sub_fa5aba3fAddress
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
                    0x79796f752061726520747279696e6720746f2062617463682072656d6f7665206d6f726520736c6f7473207468616e20657869737420696e207468652061727261,
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

function sub_3ac122db(?) {
    stor3++
    if balanceOf[address(msg.sender)] < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0xfe796f7520646f206e6f74206f776e20656e6f75676820746f6b656e7320746f2077697468647261772074686973206d616e7920455243373231205261726974
    require msg.sender
    require 10^18 <= totalSupply
    totalSupply -= 10^18
    require 10^18 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= 10^18
    emit Transfer(10^18, msg.sender, 0);
    if stor4.length <= 0:
        revert with 0, 'there are no cats in the array'
    require stor4.length - 1 < stor4.length
    stor4.length--
    if stor4.length > stor4.length - 1:
        idx = stor4.length - 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
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
    stor5[s] = 0
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x10ff0391: s
    require stor3 == stor3
}

function sub_761fce77(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    stor3++
    if ('cd', 4).length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x79796f75206d757374207375626d697420616e2061727261792077697468206174206c65617374206f6e6520656c656d656e,
                    mem[214 len 14]
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor7)
        staticcall stor7.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'you do not own this Rarity'
        require ext_code.size(stor7)
        staticcall stor7.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != this.address:
            revert with 0, 
                        32,
                        110,
                        0x74796f75206d75737420617070726f76652829207468697320636f6e747261637420746f2067697665206974207065726d697373696f6e20746f207769746864726177207468697320526172697479206265666f726520796f752063616e206465706f7369742061205261726974,
                        mem[274 len 18]
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4.length++
        stor4[stor4.length] = cd[((32 * idx) + cd[4] + 36)]
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 5
        stor5[cd[((32 * idx) + cd[4] + 36)]] = 1
        mem[96] = cd[((32 * idx) + cd[4] + 36)]
        emit 0x5d239610: cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
    if not ('cd', 4).length:
        require msg.sender
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, 0, msg.sender);
    else:
        require ('cd', 4).length
        require 10^18 * ('cd', 4).length / ('cd', 4).length == 10^18
        require msg.sender
        require totalSupply + (10^18 * ('cd', 4).length) >= totalSupply
        totalSupply += 10^18 * ('cd', 4).length
        require balanceOf[address(msg.sender)] + (10^18 * ('cd', 4).length) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * ('cd', 4).length
        emit Transfer((10^18 * ('cd', 4).length), 0, msg.sender);
    require stor3 == stor3
}



}
