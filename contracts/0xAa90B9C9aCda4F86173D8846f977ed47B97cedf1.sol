contract main {




// =====================  Runtime code  =====================


const MAX_NFT_SUPPLY = 10000


address owner;
uint8 stor1; offset 192
uint16 stor1; offset 196
uint16 sub_6036fe48; offset 160
uint16 sub_6df15165; offset 176
uint16 pendingCount; offset 192
uint64 stor1; offset 192
address pendingOwner;
array of uint16 stor2;
array of uint8 stor628;
address sub_852206b5Address;
uint256 startTime;
uint256 sub_d33108ab;
uint256 sub_cd02b88f;

function sub_6036fe48(?) {
    return sub_6036fe48
}

function sub_6df15165(?) {
    return sub_6df15165
}

function startTime() {
    return startTime
}

function minted(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 10000
    return bool(uint8(stor628[uint8(arg1)]))
}

function sub_852206b5(?) {
    return sub_852206b5Address
}

function owner() {
    return owner
}

function sub_cd02b88f(?) {
    return sub_cd02b88f
}

function sub_d33108ab(?) {
    return sub_d33108ab
}

function pendingOwner() {
    return pendingOwner
}

function pendingCount() {
    return pendingCount
}

function _fallback() payable {
    revert
}

function sub_4bca0a96(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_6df15165 = arg1
}

function getPendingAtIndex(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 10001
    return uint16(uint16(stor2[uint8(arg1)]) + arg1)
}

function claimOwnership() {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
    emit LogOwnerShipTransferred(pendingOwner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pendingOwner = arg1
    emit LogOwnerShipTransferInitiated(owner, arg1);
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'NFTSeller: Failed to withdraw'
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'NFTSeller: invalid _startTime'
    if arg1 <= block.timestamp:
        revert with 0, 'NFTSeller: old start time'
    startTime = arg1
}

function sub_7a61013f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'NFTSeller: invalid waka Price'
    if arg2 <= 0:
        revert with 0, 'NFTSeller: invalid nauts Price'
    sub_d33108ab = arg1
    sub_cd02b88f = arg2
}

function standardPurchase(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654e4654496e697469616c53656c6c65723a2053616c65206e6f7420737461727465,
                    mem[198 len 30]
    idx = 0
    while uint16(idx) < pendingCount:
        require uint16(idx) < 10001
        if uint16(uint16(stor2[uint8(idx)]) + idx) != arg1:
            idx = idx + 1
            continue 
        require arg1 < 10000
        if uint8(stor628[uint8(arg1)]):
            revert with 0, 'NFTSeller: already minted'
        if arg1 >= sub_6df15165:
            if sub_cd02b88f != msg.value:
                revert with 0, '0NFTSeller: invalid ether value'
        else:
            if sub_d33108ab != msg.value:
                revert with 0, '0NFTSeller: invalid ether value'
        require uint16(idx) < 10001
        if pendingCount != uint16(idx):
            require pendingCount < 10001
            require uint16(idx) < 10001
            uint256(stor2[uint16(idx) / 16]) = uint16(uint16(stor2[stor1.field_192 % 16]) + pendingCount - idx) * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and uint256(stor2[uint16(idx) / 16])
        pendingCount = uint16(pendingCount - 1)
        require arg1 < 10000
        uint256(stor628[uint16(arg1) / 32]) = uint256(stor628[uint16(arg1) / 32]) and !(255 * 256^(arg1 % 32)) or 256^(arg1 % 32)
        require ext_code.size(sub_852206b5Address)
        call sub_852206b5Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                42,
                0x774e465453656c6c65723a20696e76616c696420746f6b656e2069642870656e64696e6720696e646578,
                mem[206 len 22]
}

function sub_8498adbc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if block.timestamp < startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654e4654496e697469616c53656c6c65723a2053616c65206e6f7420737461727465,
                    mem[198 len 30]
    if not pendingCount:
        revert with 0, 'NFTSeller: All minted'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x294e4654496e697469616c53656c6c653a206e756d6265724f664e6674732063616e6e6f7420626520,
                    mem[205 len 23]
    if arg1 > sub_6036fe48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0xfe4e465453656c6c65723a20596f75206d6179206e6f7420627579206d6f7265207468616e204d41585f4e46545f5045525f55534552204e465473206174206f6e63,
                    mem[230 len 30]
    require ext_code.size(sub_852206b5Address)
    staticcall sub_852206b5Address.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + ext_call.return_data[0] > 10000:
        revert with 0, 'NFTSeller: sale already ended'
    if not arg2:
        if not sub_cd02b88f:
            if 0 < msg.value:
                revert with 0, '0NFTSeller: invalid ether value'
            idx = 0
            while idx < arg1:
                _73 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = uint64(stor1.field_192) << 240
                _74 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 98
                _76 = sha3(mem[_74 + 32 len mem[_74]])
                require pendingCount
                require uint16((sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1) < 10001
                if pendingCount != uint16((sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1):
                    require pendingCount < 10001
                    require uint16((sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1) < 10001
                    uint256(stor2[uint16((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1) / 16]) = uint16(uint16(stor2[stor1.field_192 % 16]) + pendingCount + -(sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) - 1) * 256^(2 * (sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1 % 16) or !(65535 * 256^(2 * (sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1 % 16)) and uint256(stor2[uint16((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1) / 16])
                pendingCount = uint16(pendingCount - 1)
                require uint16(uint16(stor2[uint8((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1) < 10000
                uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1) / 32]) = uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1) / 32]) and !(255 * 256^(uint16(stor2[uint8((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1 % 32)) or 256^(uint16(stor2[uint8((sha3(mem[_74 + 32 len mem[_74]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1 % 32)
                mem[_73 + 98] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[_73 + 102] = msg.sender
                mem[_73 + 134] = uint16(uint16(stor2[uint8((_76 % uint16(stor1.field_192)) + 1)]) + (_76 % pendingCount) + 1)
                require ext_code.size(sub_852206b5Address)
                call sub_852206b5Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, uint16(uint16(stor2[uint8((_76 % uint16(stor1.field_192)) + 1)]) + (_76 % pendingCount) + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if arg1 * sub_cd02b88f / sub_cd02b88f != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg1 * sub_cd02b88f < msg.value:
                revert with 0, '0NFTSeller: invalid ether value'
            idx = 0
            while idx < arg1:
                _69 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = uint64(stor1.field_192) << 240
                _70 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 98
                _72 = sha3(mem[_70 + 32 len mem[_70]])
                require pendingCount
                require uint16((sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1) < 10001
                if pendingCount != uint16((sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1):
                    require pendingCount < 10001
                    require uint16((sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1) < 10001
                    uint256(stor2[uint16((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1) / 16]) = uint16(uint16(stor2[stor1.field_192 % 16]) + pendingCount + -(sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) - 1) * 256^(2 * (sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1 % 16) or !(65535 * 256^(2 * (sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1 % 16)) and uint256(stor2[uint16((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1) / 16])
                pendingCount = uint16(pendingCount - 1)
                require uint16(uint16(stor2[uint8((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1) < 10000
                uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1) / 32]) = uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1) / 32]) and !(255 * 256^(uint16(stor2[uint8((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1 % 32)) or 256^(uint16(stor2[uint8((sha3(mem[_70 + 32 len mem[_70]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_70 + 32 len mem[_70]]) % pendingCount) + 1 % 32)
                mem[_69 + 98] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[_69 + 102] = msg.sender
                mem[_69 + 134] = uint16(uint16(stor2[uint8((_72 % uint16(stor1.field_192)) + 1)]) + (_72 % pendingCount) + 1)
                require ext_code.size(sub_852206b5Address)
                call sub_852206b5Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, uint16(uint16(stor2[uint8((_72 % uint16(stor1.field_192)) + 1)]) + (_72 % pendingCount) + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        if not sub_d33108ab:
            if 0 < msg.value:
                revert with 0, '0NFTSeller: invalid ether value'
            idx = 0
            while idx < arg1:
                _81 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = uint64(stor1.field_192) << 240
                _82 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 98
                _84 = sha3(mem[_82 + 32 len mem[_82]])
                require pendingCount
                require uint16((sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1) < 10001
                if pendingCount != uint16((sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1):
                    require pendingCount < 10001
                    require uint16((sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1) < 10001
                    uint256(stor2[uint16((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1) / 16]) = uint16(uint16(stor2[stor1.field_192 % 16]) + pendingCount + -(sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) - 1) * 256^(2 * (sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1 % 16) or !(65535 * 256^(2 * (sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1 % 16)) and uint256(stor2[uint16((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1) / 16])
                pendingCount = uint16(pendingCount - 1)
                require uint16(uint16(stor2[uint8((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1) < 10000
                uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1) / 32]) = uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1) / 32]) and !(255 * 256^(uint16(stor2[uint8((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1 % 32)) or 256^(uint16(stor2[uint8((sha3(mem[_82 + 32 len mem[_82]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_82 + 32 len mem[_82]]) % pendingCount) + 1 % 32)
                mem[_81 + 98] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[_81 + 102] = msg.sender
                mem[_81 + 134] = uint16(uint16(stor2[uint8((_84 % uint16(stor1.field_192)) + 1)]) + (_84 % pendingCount) + 1)
                require ext_code.size(sub_852206b5Address)
                call sub_852206b5Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, uint16(uint16(stor2[uint8((_84 % uint16(stor1.field_192)) + 1)]) + (_84 % pendingCount) + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if arg1 * sub_d33108ab / sub_d33108ab != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg1 * sub_d33108ab < msg.value:
                revert with 0, '0NFTSeller: invalid ether value'
            idx = 0
            while idx < arg1:
                _77 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = uint64(stor1.field_192) << 240
                _78 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 98
                _80 = sha3(mem[_78 + 32 len mem[_78]])
                require pendingCount
                require uint16((sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1) < 10001
                if pendingCount != uint16((sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1):
                    require pendingCount < 10001
                    require uint16((sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1) < 10001
                    uint256(stor2[uint16((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1) / 16]) = uint16(uint16(stor2[stor1.field_192 % 16]) + pendingCount + -(sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) - 1) * 256^(2 * (sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1 % 16) or !(65535 * 256^(2 * (sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1 % 16)) and uint256(stor2[uint16((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1) / 16])
                pendingCount = uint16(pendingCount - 1)
                require uint16(uint16(stor2[uint8((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1) < 10000
                uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1) / 32]) = uint256(stor628[uint16(uint16(stor2[uint8((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1) / 32]) and !(255 * 256^(uint16(stor2[uint8((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1 % 32)) or 256^(uint16(stor2[uint8((sha3(mem[_78 + 32 len mem[_78]]) % uint16(stor1.field_192)) + 1)]) + (sha3(mem[_78 + 32 len mem[_78]]) % pendingCount) + 1 % 32)
                mem[_77 + 98] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[_77 + 102] = msg.sender
                mem[_77 + 134] = uint16(uint16(stor2[uint8((_80 % uint16(stor1.field_192)) + 1)]) + (_80 % pendingCount) + 1)
                require ext_code.size(sub_852206b5Address)
                call sub_852206b5Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, uint16(uint16(stor2[uint8((_80 % uint16(stor1.field_192)) + 1)]) + (_80 % pendingCount) + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
