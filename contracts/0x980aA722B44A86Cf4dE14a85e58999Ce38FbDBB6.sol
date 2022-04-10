contract main {




// =====================  Runtime code  =====================


array of uint256 merkleRoots;
uint256 pendingMerkleRoot;
uint256 lastRoot;
address sub_891dfef3Address;
address sub_10531aa2Address;
mapping of uint256 stor5;
address sub_9b8e5563Address;

function sub_10531aa2(?) payable {
    return sub_10531aa2Address
}

function merkleRoots(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < merkleRoots.length
    return merkleRoots[arg1]
}

function sub_891dfef3(?) payable {
    return sub_891dfef3Address
}

function pendingMerkleRoot() payable {
    return pendingMerkleRoot
}

function sub_9b8e5563(?) payable {
    return sub_9b8e5563Address
}

function lastRoot() payable {
    return lastRoot
}

function _fallback() payable {
    revert
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require not sub_9b8e5563Address
    sub_9b8e5563Address = arg1
}

function setReviewAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_10531aa2Address
    sub_10531aa2Address = arg1
}

function setProposalAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_891dfef3Address
    sub_891dfef3Address = arg1
}

function isClaimed(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return (1 << uint8(arg2) and stor5[arg1][Mask(248, 8, arg2)] == 1 << uint8(arg2))
}

function proposeNewMerkleRoot(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_891dfef3Address
    require not pendingMerkleRoot
    require 52 > merkleRoots.length
    require block.timestamp > lastRoot + (168 * 24 * 3600)
    pendingMerkleRoot = arg1
}

function reviewPendingMerkleRoot(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_10531aa2Address
    require pendingMerkleRoot
    if arg1:
        merkleRoots.length++
        merkleRoots[merkleRoots.length] = pendingMerkleRoot
        lastRoot = 168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600
    pendingMerkleRoot = 0
}

function claim(uint256 arg1, uint256 arg2, uint256 arg3, bytes32[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if arg1 >= merkleRoots.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4d65726b6c654469737472696275746f723a20496e76616c6964206d65726b6c65496e6465,
                    mem[202 len 26]
    mem[32] = sha3(arg1, 5)
    if 1 << uint8(arg2) and stor5[arg1][Mask(248, 8, arg2)] == 1 << uint8(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d65726b6c654469737472696275746f723a2044726f7020616c726561647920636c61696d6564,
                    mem[204 len 24]
    mem[128] = arg2
    mem[160] = msg.sender << 96
    mem[180] = arg3
    mem[96] = 84
    mem[64] = (32 * arg4.length) + 244
    mem[212] = arg4.length
    mem[244 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 244] = 0
    require arg1 < merkleRoots.length
    mem[0] = 0
    idx = 0
    s = 0
    while idx < arg4.length:
        require idx < mem[212]
        _33 = mem[(32 * idx) + 244]
        if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
            mem[mem[64] + 32] = mem[(32 * idx) + 244]
            mem[mem[64] + 64] = s + sha3(mem[128 len 84])
            _37 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_37 + 32 len mem[_37]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 84])
        mem[mem[64] + 64] = _33
        _41 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_41 + 32 len mem[_41]])
        continue 
    if merkleRoots[arg1] != s:
        revert with 0, 32, 33, 0x2e4d65726b6c654469737472696275746f723a20496e76616c69642070726f6f66, mem[mem[64] + 101 len 31]
    stor5[arg1][Mask(248, 8, arg2)] = 1
    require ext_code.size(sub_9b8e5563Address)
    call sub_9b8e5563Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(arg1, arg2, msg.sender, arg3);
}



}
