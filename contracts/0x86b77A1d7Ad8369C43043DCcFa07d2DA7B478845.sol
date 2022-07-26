contract main {




// =====================  Runtime code  =====================


#
#  - executeProposal(uint256 arg1)
#
address owner;
uint256 stor1;
uint256 stor2;
address bearTokenAddress;
address sub_9a1e1e23Address;
array of struct stor5;

function owner() payable {
    return owner
}

function sub_9a1e1e23(?) payable {
    return sub_9a1e1e23Address
}

function bearToken() payable {
    return bearTokenAddress
}

function sub_f1c5fd82(?) payable {
    return stor5.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function closeProposal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor5.length:
        revert with 0, 50
    if stor5[arg1].field_512 > 2:
        revert with 0, 33
    if not stor5[arg1].field_512:
        stor5[arg1].field_512 = 2
    emit ProposalClosed(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_27ebeef0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 < stor1:
        revert with 0, 'invalid period value'
    if arg2 > stor2:
        revert with 0, 'invalid period value'
    if block.timestamp > !arg2:
        revert with 0, 17
    stor5.length++
    stor5[stor5.length].field_0 = address(arg1)
    if stor5[stor5.length].field_256:
        if stor5[stor5.length].field_256 == stor5[stor5.length].field_257 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((7 * stor5.length) + ('name', 'stor5', 5) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor5[stor5.length].field_256 = 0
            idx = 0
            while stor5[stor5.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((7 * stor5.length) + ('name', 'stor5', 5) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[stor5.length].field_256 == stor5[stor5.length].field_257 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((7 * stor5.length) + ('name', 'stor5', 5) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor5[stor5.length].field_256 = 0
            idx = 0
            while stor5[stor5.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((7 * stor5.length) + ('name', 'stor5', 5) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor5[stor5.length].field_512 = 0
    stor5[stor5.length].field_768 = 0
    stor5[stor5.length].field_768 = block.number
    stor5[stor5.length].field_1024 = block.timestamp + arg2
    stor5[stor5.length].field_1280 = 0
    stor5[stor5.length].field_1536 = 0
    if stor5.length < 1:
        revert with 0, 17
    emit 0xc15fe0de: stor5.length - 1
}

function vote(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= stor5.length:
        revert with 0, 50
    if stor5[arg1].field_256:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
    else:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
    if stor5[arg1].field_256:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
        if stor5[arg1].field_257:
            if 31 < stor5[arg1].field_257:
                idx = 352
                s = 0
                while stor5[arg1].field_257 + 320 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
        if stor5[arg1].field_257:
            if 31 < stor5[arg1].field_257:
                idx = 352
                s = 0
                while stor5[arg1].field_257 + 320 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor5[arg1].field_512 > 2:
        revert with 0, 33
    if stor5[arg1].field_512 > 2:
        revert with 0, 33
    if stor5[arg1].field_512:
        revert with 0, 'not open'
    if stor5[arg1].field_1024 < block.timestamp:
        revert with 0, 'ended'
    if arg1 >= stor5.length:
        revert with 0, 50
    require ext_code.size(bearTokenAddress)
    staticcall bearTokenAddress.getPriorVotes(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, stor5[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9a1e1e23Address)
    staticcall sub_9a1e1e23Address.getPriorVotes(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, stor5[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if stor5[arg1].field_1280 > !(2 * ext_call.return_data[0]):
        revert with 0, 17
    if not arg2:
        stor5[arg1].field_1536 = stor5[arg1].field_1280 + (2 * ext_call.return_data[0])
    else:
        stor5[arg1].field_1280 += 2 * ext_call.return_data[0]
    emit 0x628521ab: (2 * ext_call.return_data[0]), msg.sender, arg1, arg2
}

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    if stor5[arg1].field_256:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
        if stor5[arg1].field_256:
            if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
                revert with 0, 34
            if stor5[arg1].field_257:
                if 31 >= stor5[arg1].field_257:
                    mem[128] = 256 * stor5[arg1].field_264
                else:
                    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
                revert with 0, 34
            if stor5[arg1].field_257:
                if 31 >= stor5[arg1].field_257:
                    mem[128] = 256 * stor5[arg1].field_264
                else:
                    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor5[arg1].field_512 >= 3:
            revert with 0, 33
        return stor5[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor5[arg1].field_257), data=mem[128 len ceil32(stor5[arg1].field_257)]),
               stor5[arg1].field_512,
               stor5[arg1].field_768,
               stor5[arg1].field_1024,
               stor5[arg1].field_1280,
               stor5[arg1].field_1536
    if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
        revert with 0, 34
    if stor5[arg1].field_256:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
        if stor5[arg1].field_257:
            if 31 >= stor5[arg1].field_257:
                mem[128] = 256 * stor5[arg1].field_264
            else:
                mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1].field_256 == stor5[arg1].field_257 < 32:
            revert with 0, 34
        if stor5[arg1].field_257:
            if 31 >= stor5[arg1].field_257:
                mem[128] = 256 * stor5[arg1].field_264
            else:
                mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor5[arg1].field_512 >= 3:
        revert with 0, 33
    return stor5[arg1].field_0, 
           Array(len=stor5[arg1].field_256, data=mem[128 len ceil32(stor5[arg1].field_257)]),
           stor5[arg1].field_512,
           stor5[arg1].field_768,
           stor5[arg1].field_1024,
           stor5[arg1].field_1280,
           stor5[arg1].field_1536
}



}
