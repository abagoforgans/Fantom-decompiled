contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 nonce;
mapping of uint8 stor2;
mapping of uint8 stor3;
address owner;

function getNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonce[arg1]
}

function getProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function getOwner() payable {
    return owner
}

function sub_993084e8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function getRequest(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_34750126(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 26, 0xfe524e473a20616c6c6f77656420746f206f776e6572206f6e6c790000000000
    stor3[address(arg1)] = 1
    emit 0x538bcc00: arg1
}

function sub_538f8f5e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 26, 0xfe524e473a20616c6c6f77656420746f206f776e6572206f6e6c790000000000
    stor2[address(arg1)] = 1
    emit 0xc08fb44c: arg1
}

function sub_6693a679(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 26, 0xfe524e473a20616c6c6f77656420746f206f776e6572206f6e6c790000000000
    stor2[address(arg1)] = 0
    emit 0xda10ec64: arg1
}

function sub_89d8de66(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 26, 0xfe524e473a20616c6c6f77656420746f206f776e6572206f6e6c790000000000
    stor3[address(arg1)] = 0
    emit 0x47de4abe: arg1
}

function cancelRequest(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 26, 0xfe524e473a20616c6c6f77656420746f206f776e6572206f6e6c790000000000
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    emit 0x7efba545: arg1
}

function sub_07dfe505(?) payable {
    require calldata.size - 4 >= 64
    if not stor3[msg.sender]:
        revert with 0, 'RNG: only provider can fulfill'
    if not stor0[arg1].field_256:
        revert with 0, 'RNG: unknown request ID'
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    call stor0[arg1].field_256 with:
       funct stor0[arg1].field_0
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not ext_call.success:
        revert with 0, 'RNG: failed to fulfill'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 26, 0xfe524e473a20616c6c6f77656420746f206f776e6572206f6e6c790000000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x52616e646f6d54726164653a207a65726f2061646472657373206e6f7420616c6c6f776500,
                    mem[201 len 27]
    owner = arg1
    emit OwnerChanged(arg1);
}

function requestRandomNumber(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'RNG: unknown consumer'
    if stor0[msg.sender][arg1][stor1[msg.sender]][block.timestamp].field_256:
        revert with 0, 'RNG: existing request ID'
    stor0[msg.sender][arg1][stor1[msg.sender]][block.timestamp].field_0 = arg1
    stor0[msg.sender][arg1][stor1[msg.sender]][block.timestamp].field_256 = msg.sender
    nonce[msg.sender]++
    emit 0xac2e43d9: sha3(msg.sender, arg1, nonce[msg.sender], block.timestamp), arg1
}



}
