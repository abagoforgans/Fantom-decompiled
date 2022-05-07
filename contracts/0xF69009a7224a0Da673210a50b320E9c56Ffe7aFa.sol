contract main {




// =====================  Runtime code  =====================


const sub_924191d7(?) = 16

const sub_9b5e411b(?) = 4096

const sub_f28066ec(?) = 12


address owner;
uint32 stor1;
uint64 stor1;
uint64 stor1; offset 32
array of struct stor2;
mapping of struct stor3;
array of struct stor4;
array of uint256 stor9092923444043138061968080586776454158397970065015806800705841182802457724344;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getStatus() payable {
    return uint32(stor1.field_0), uint64(stor1.field_32)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function hasAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)].field_0:
        return bool(stor3[address(arg1)].field_0)
    if not stor2.length:
        return bool(stor2.length)
    require 0 < stor2.length
    return (address(stor2.field_0) == arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3e1f947b(?) payable {
    if stor4.length:
        mem[128] = uint256(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4.length, data=mem[128 len 32 * stor4.length])
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    mem[(32 * stor4.length) + 192 len 32 * stor4.length] = mem[128 len 32 * stor4.length]
    return memory
      from (32 * stor4.length) + 128
       len (96 * stor4.length) + 64
}

function sub_755ecab9(?) payable {
    require stor2.length <= test266151307()
    mem[96] = stor2.length
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        mem[(32 * idx) + 128] = uint16(Mask(256, -16 * -(idx % 16) + 15, stor141A[0.0625 / idx]) >> 16 * -(idx % 16) + 15)
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = mem[96]
    mem[(32 * stor2.length) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * stor2.length) + 160 len (32 * mem[96]) + 32]
}

function setPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor3[address(arg1)].field_0:
        if not stor2.length:
            revert with 0, 'FallbackOracle: ASSET_NOT_FOUND'
        require 0 < stor2.length
        if address(stor2.field_0) != arg1:
            revert with 0, 'FallbackOracle: ASSET_NOT_FOUND'
    require stor3[address(arg1)].field_0 < stor4.length
    stor4[stor3[address(arg1)].field_0].field_0 = arg2
    stor141A[Mask(252, 0, stor3[address(arg1)].field_4)] = stor141A[Mask(252, 0, stor3[address(arg1)].field_4)] and !(65535 << 16 * -stor3[address(arg1)].field_0 % 16 + 15) or 4096 << 16 * -stor3[address(arg1)].field_0 % 16 + 15
    require block.timestamp <= test266151307()
    uint32(stor1.field_0) = uint32(block.timestamp)
    uint64(stor1.field_32) = uint64(sha3(uint64(stor1.field_32), arg1, arg2))
}

function addAsset(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor3[address(arg1)].field_0:
        revert with 0, 'FallbackOracle: ASSET_EXISTS'
    if stor2.length:
        require 0 < stor2.length
        if address(stor2.field_0) == arg1:
            revert with 0, 'FallbackOracle: ASSET_EXISTS'
    stor3[address(arg1)].field_0 = stor2.length
    stor2.length++
    address(stor2[stor2.length].field_0) = arg1
    stor4.length++
    stor4[stor4.length].field_0 = arg2
    stor141A[Mask(252, 0, stor3[address(arg1)].field_4)] = stor141A[Mask(252, 0, stor3[address(arg1)].field_4)] and !(65535 << 16 * -stor3[address(arg1)].field_0 % 16 + 15) or 4096 << 16 * -stor3[address(arg1)].field_0 % 16 + 15
    require block.timestamp <= test266151307()
    uint32(stor1.field_0) = uint32(block.timestamp)
    uint64(stor1.field_32) = uint64(sha3(uint64(stor1.field_32), arg1, arg2))
}

function getAssets() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = (32 * stor2.length) + 192
        t = 128
        while idx < stor2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = address(stor2[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_c6ae83ff(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] == uint64(cd[36])
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor2.length:
        if ('cd', 4).length:
            revert with 0, 'FallbackOracle: WRONG_LENGTH'
    else:
        if ('cd', 4).length != 32 * (stor2.length - 1 / 16) + 1:
            revert with 0, 'FallbackOracle: WRONG_LENGTH'
        if uint64(stor1.field_32) != uint64(cd[36]):
            revert with 0, 'FallbackOracle: STALE_UPDATE'
        uint64(stor1.field_32) = uint64(sha3(uint64(stor1.field_0), call.data[cd[4] + 36 len ('cd', 4).length]))
        require block.timestamp <= test266151307()
        uint32(stor1.field_0) = uint32(block.timestamp)
        idx = 0
        s = 0x141a698ba9eb4bd7a8b6a43dbd22eb681ca87d6d9aa9be185de1254dc00d05b8
        t = 100
        while idx < (stor2.length - 1 / 16) + 1:
            stor[s] = cd[t]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
}

function assetToUsd(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[address(arg1)].field_0:
        if not stor2.length:
            revert with 0, 'FallbackOracle: ASSET_NOT_FOUND'
        require 0 < stor2.length
        if address(stor2.field_0) != arg1:
            revert with 0, 'FallbackOracle: ASSET_NOT_FOUND'
    require stor3[address(arg1)].field_0 < stor4.length
    if arg2:
        if stor4[stor3[address(arg1)].field_0].field_0 * arg2 / arg2 != stor4[stor3[address(arg1)].field_0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor4[stor3[address(arg1)].field_0].field_0 * arg2:
            if 0 / stor4[stor3[address(arg1)].field_0].field_0 * arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_3d8ef0de(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ('cd', 4).length:
        revert with 0, 'FallbackOracle: BAD_LENGTH'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'FallbackOracle: BAD_LENGTH'
    idx = 0
    s = stor2.length
    t = uint64(stor1.field_32)
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        if stor3[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            revert with 0, 'FallbackOracle: ASSET_EXISTS'
        if not stor2.length:
            mem[32] = 3
            stor3[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = s
            stor2.length++
            address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
            stor4.length++
            mem[0] = 4
            stor4[stor4.length].field_0 = cd[((32 * idx) + cd[36] + 36)]
            stor141A[0.0625 / s] = stor141A[0.0625 / s] and !(65535 << 16 * -(s % 16) + 15) or 4096 << 16 * -(s % 16) + 15
            mem[mem[64] + 32] = t << 192
            mem[mem[64] + 40] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 60] = cd[((32 * idx) + cd[36] + 36)]
            _33 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            idx = idx + 1
            s = s + 1
            t = sha3(mem[_33 + 32 len mem[_33]])
            continue 
        require 0 < stor2.length
        if address(stor2.field_0) == address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'FallbackOracle: ASSET_EXISTS'
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = s
        stor2.length++
        address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
        stor4.length++
        mem[0] = 4
        stor4[stor4.length].field_0 = cd[((32 * idx) + cd[36] + 36)]
        stor141A[0.0625 / s] = stor141A[0.0625 / s] and !(65535 << 16 * -(s % 16) + 15) or 4096 << 16 * -(s % 16) + 15
        mem[mem[64] + 32] = t << 192
        mem[mem[64] + 40] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 60] = cd[((32 * idx) + cd[36] + 36)]
        _38 = mem[64]
        mem[mem[64]] = 60
        mem[64] = mem[64] + 92
        idx = idx + 1
        s = s + 1
        t = sha3(mem[_38 + 32 len mem[_38]])
        continue 
    uint64(stor1.field_32) = uint64(t)
    require block.timestamp <= test266151307()
    uint32(stor1.field_0) = uint32(block.timestamp)
}

function setPrices(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1.length:
        revert with 0, 'FallbackOracle: BAD_LENGTH'
    if arg2.length != arg1.length:
        revert with 0, 'FallbackOracle: BAD_LENGTH'
    idx = 0
    s = uint64(stor1.field_32)
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        if stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0:
            mem[32] = 3
            require stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0 < stor4.length
            mem[0] = 4
            stor4[stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_0 = cd[((32 * idx) + arg2 + 36)]
            stor141A[Mask(252, 0, stor3[address(cd[((32 * idx) + arg1 + 36)])].field_4)] = stor141A[Mask(252, 0, stor3[address(cd[((32 * idx) + arg1 + 36)])].field_4)] and !(65535 << 16 * -stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0 % 16 + 15) or 4096 << 16 * -stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0 % 16 + 15
            mem[mem[64] + 32] = s << 192
            mem[mem[64] + 40] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 60] = cd[((32 * idx) + arg2 + 36)]
            _37 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            idx = idx + 1
            s = sha3(mem[_37 + 32 len mem[_37]])
            continue 
        if not stor2.length:
            revert with 0, 'FallbackOracle: ASSET_NOT_FOUND'
        require 0 < stor2.length
        if address(stor2.field_0) != address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'FallbackOracle: ASSET_NOT_FOUND'
        mem[32] = 3
        require stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0 < stor4.length
        mem[0] = 4
        stor4[stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_0 = cd[((32 * idx) + arg2 + 36)]
        stor141A[Mask(252, 0, stor3[address(cd[((32 * idx) + arg1 + 36)])].field_4)] = stor141A[Mask(252, 0, stor3[address(cd[((32 * idx) + arg1 + 36)])].field_4)] and !(65535 << 16 * -stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0 % 16 + 15) or 4096 << 16 * -stor3[address(cd[((32 * idx) + arg1 + 36)])].field_0 % 16 + 15
        mem[mem[64] + 32] = s << 192
        mem[mem[64] + 40] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 60] = cd[((32 * idx) + arg2 + 36)]
        _42 = mem[64]
        mem[mem[64]] = 60
        mem[64] = mem[64] + 92
        idx = idx + 1
        s = sha3(mem[_42 + 32 len mem[_42]])
        continue 
    uint64(stor1.field_32) = uint64(s)
    require block.timestamp <= test266151307()
    uint32(stor1.field_0) = uint32(block.timestamp)
}



}
