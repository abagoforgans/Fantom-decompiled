contract main {




// =====================  Runtime code  =====================


address chairpersonAddress;
uint256 stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 proposalsCount;
array of struct proposals;
mapping of struct votes;

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < proposals.length
    return proposals[arg1].field_0, proposals[arg1].field_256
}

function proposalsCount() payable {
    return proposalsCount
}

function chairperson() payable {
    return chairpersonAddress
}

function votes(address arg1) payable {
    require calldata.size - 4 >= 32
    return votes[arg1].field_0, votes[arg1].field_256, votes[arg1].field_512, votes[arg1].field_768
}

function _fallback() payable {
    revert
}

function ballot() payable {
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while stor2.length + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1, Array(len=stor2.length, data=mem[128 len stor2.length]), stor3, stor4, bool(stor5)
}

function winner() payable {
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e5468652062616c6c6f7420686173206e6f74206265656e2066696e616c697a656420796574,
                    mem[202 len 26]
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 7
        if proposals[idx].field_256 <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < proposals.length
        mem[0] = 7
        idx = idx + 1
        s = proposals[idx].field_256
        continue 
    if 0 < proposals.length:
        return 0, uint256(proposals.field_256), uint256(proposals.field_0)
    revert
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e596f752063616e206e6f7420766f74652c2062616c6c6f74206973206e6f74206f70656e20796574,
                    mem[205 len 23]
    if block.timestamp >= stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2e596f752063616e206e6f7420766f74652c2062616c6c6f7420697320616c726561647920636c6f736564,
                    mem[207 len 21]
    if votes[msg.sender].field_256:
        revert with 0, 'Already voted before.'
    if arg1 >= proposals.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e54686520766f7465206973206f7574206f662070726f706f73616c732072616e6765,
                    mem[199 len 29]
    votes[msg.sender].field_256 = block.timestamp
    votes[msg.sender].field_0 = arg1
    emit 0x174ba19b: arg1, this.address, msg.sender
}

function finalize() payable {
    if block.timestamp <= stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2e42616c6c6f74206973207374696c6c206163746976652c2063616e206e6f742070726f63656564,
                    mem[204 len 24]
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e5468652062616c6c6f7420686173206265656e2066696e616c697a656420616c7265616479,
                    mem[202 len 26]
    if chairpersonAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f6e6c79206368616972706572736f6e2063616e2066696e616c697a65207468652062616c6c6f74,
                    mem[205 len 23]
    stor5 = 1
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 7
        if proposals[idx].field_256 <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < proposals.length
        mem[0] = 7
        idx = idx + 1
        s = proposals[idx].field_256
        continue 
    emit Finalized(0, this.address);
}

function sub_ee2ef228(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if block.timestamp <= stor4:
        revert with 0, 
                    32,
                    40,
                    0x2e42616c6c6f74206973207374696c6c206163746976652c2063616e206e6f742070726f63656564,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 300 len 24]
    if stor5:
        revert with 0, 
                    32,
                    65,
                    0x2e5468652062616c6c6f7420686173206265656e2066696e616c697a65642c206e6f206164646974696f6e616c2061646a7573746d656e747320616c6c6f776564,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 325 len 31]
    if chairpersonAddress != msg.sender:
        revert with 0, 
                    32,
                    38,
                    0x2e4f6e6c79206368616972706572736f6e2063616e2073657420766f74652077656967687473,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 298 len 26]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if votes[mem[(32 * idx) + 140 len 20]].field_256 > 0:
            require votes[mem[(32 * idx) + 140 len 20]].field_0 < proposals.length
            require idx < arg2.length
            require votes[mem[(32 * idx) + 140 len 20]].field_0 < proposals.length
            mem[0] = 7
            if proposals[stor8[mem[(32 * idx) + 140 len 20]].field_0].field_256 + mem[(32 * idx) + (32 * arg1.length) + 160] > proposals[stor8[mem[(32 * idx) + 140 len 20]].field_0].field_256:
                require idx < arg2.length
                votes[mem[(32 * idx) + 140 len 20]].field_512 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < arg3.length
                votes[mem[(32 * idx) + 140 len 20]].field_768 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < arg2.length
                require votes[mem[(32 * idx) + 140 len 20]].field_0 < proposals.length
                mem[0] = 7
                proposals[stor8[mem[(32 * idx) + 140 len 20]].field_0].field_256 += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}



}
