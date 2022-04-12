contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address participants;
mapping of uint8 stor3;
mapping of uint256 weights;
uint8 closed;
uint8 started; offset 8
address tokenAddress; offset 16
uint256 stor5; offset 8
uint256 claimable;

function started() payable {
    return bool(started)
}

function participants(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < participants.length
    return participants[arg1]
}

function closed() payable {
    return bool(closed)
}

function owner() payable {
    return owner
}

function weights(address arg1) payable {
    require calldata.size - 4 >= 32
    return weights[arg1]
}

function claimable() payable {
    return claimable
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function sub_586b9a7c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6447686f737441697264726f703a2077686974656c69737420697320636c6f7365,
                    mem[197 len 31]
    closed = 1
}

function airdropValue() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not tokenAddress:
        return 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_db0e701f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6447686f737441697264726f703a2077686974656c69737420697320636c6f7365,
                    mem[197 len 31]
    stor1[address(arg1)] = 0
    weights[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5f856926(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if closed:
        revert with 0, 32, 33, 0x6447686f737441697264726f703a2077686974656c69737420697320636c6f7365, mem[(32 * arg1.length) + 229 len 31]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        weights[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_2d7a0dae(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6447686f737441697264726f703a2077686974656c69737420697320636c6f7365,
                    mem[197 len 31]
    if 2 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7047686f737441697264726f703a3a77686974656c697374416464723a2077726f6e67207765696768742028322d34,
                    mem[211 len 17]
    if arg2 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7047686f737441697264726f703a3a77686974656c697374416464723a2077726f6e67207765696768742028322d34,
                    mem[211 len 17]
    stor1[address(arg1)] = 1
    participants.length++
    participants[participants.length] = arg1
    weights[address(arg1)] = arg2
}

function updateWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6447686f737441697264726f703a2077686974656c69737420697320636c6f7365,
                    mem[197 len 31]
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2947686f737441697264726f703a3a7570646174655765696768743a2041646472206973206e6f742077686974656c69737465,
                    mem[215 len 13]
    if 2 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6447686f737441697264726f703a3a7570646174655765696768743a2077726f6e67207765696768742028322d34,
                    mem[210 len 18]
    if arg2 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6447686f737441697264726f703a3a7570646174655765696768743a2077726f6e67207765696768742028322d34,
                    mem[210 len 18]
    weights[address(arg1)] = arg2
}

function sub_283c5238(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if closed:
        revert with 0, 32, 33, 0x6447686f737441697264726f703a2077686974656c69737420697320636c6f7365, mem[(32 * arg1.length) + 229 len 31]
    if 2 > arg2:
        revert with 0, 
                    32,
                    48,
                    0x6447686f737441697264726f703a3a77686974656c69737441646472733a2077726f6e67207765696768742028322d34,
                    mem[(32 * arg1.length) + 244 len 16]
    if arg2 > 4:
        revert with 0, 
                    32,
                    48,
                    0x6447686f737441697264726f703a3a77686974656c69737441646472733a2077726f6e67207765696768742028322d34,
                    mem[(32 * arg1.length) + 244 len 16]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        participants.length++
        participants[participants.length] = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        weights[mem[(32 * idx) + 140 len 20]] = arg2
        idx = idx + 1
        continue 
}

function claim() payable {
    if not started:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6447686f737441697264726f703a3a636c61696d3a2061697264726f70206d75737420626520737461727465,
                    mem[208 len 20]
    if not claimable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7347686f737441697264726f703a3a636c61696d3a20726577617264206e6f74207365,
                    mem[199 len 29]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6447686f737441697264726f703a3a636c61696d3a20796f7520617265206e6f742077686974656c69737465,
                    mem[208 len 20]
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x7747686f737441697264726f703a3a636c61696d3a20796f7520616c726561647920636c61696d656420796f757220746f6b656e,
                    mem[216 len 12]
    stor3[address(msg.sender)] = 1
    if not claimable:
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require claimable
        if claimable * weights[address(msg.sender)] / claimable != weights[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, claimable * weights[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function startAirdrop() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x7347686f737441697264726f703a3a737461727441697264726f703a2057686974656c697374206973206e6f7420636c6f7365,
                    mem[215 len 13]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7447686f737441697264726f703a3a737461727441697264726f703a206e6f7468696e6720746f2061697264726f,
                    mem[210 len 18]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7447686f737441697264726f703a3a737461727441697264726f703a206e6f7468696e6720746f2061697264726f,
                    mem[210 len 18]
    if not tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2947686f737441697264726f703a3a737461727441697264726f703a2074686520746f6b656e206d757374206265207365747465,
                    mem[216 len 12]
    idx = 0
    s = 0
    t = 0
    while idx < participants.length:
        mem[0] = participants[idx]
        mem[32] = 1
        if not stor1[stor2[idx]]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < participants.length
        mem[0] = participants[idx]
        mem[32] = 4
        if weights[stor2[idx]] == 3:
            idx = idx + 1
            s = s + 1
            t = t + 1
            continue 
        require idx < participants.length
        mem[0] = participants[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + 1
        t = t
        continue 
    if not t:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if tokenAddress:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        revert with 0, 'SafeMath: division by zero'
    require t
    if 3 * t / t != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not tokenAddress:
        if 3 * t <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 3 * t
        claimable = 0 / 3 * t
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 3 * t <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 3 * t
        claimable = ext_call.return_data[0] / 3 * t
    stor5 = 1
}



}
