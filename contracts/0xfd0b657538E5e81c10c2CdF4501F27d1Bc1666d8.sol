contract main {




// =====================  Runtime code  =====================


#
#  - sub_7fd6c405(?)
#  - sub_af2a5d6f(?)
#  - getPhoto(uint256 arg1)
#
array of struct stor0;
array of address sub_dc0985c3;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702953;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702954;

function sub_dc0985c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_dc0985c3.length
    return address(sub_dc0985c3[arg1])
}

function _fallback() payable {
    revert
}

function sub_1f4342be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_dc0985c3.length:
        mem[0] = 1
        idx = idx + 1
        continue 
    return 0
}

function sub_7cb1479b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    idx = 0
    while idx < sub_dc0985c3.length:
        mem[0] = 1
        idx = idx + 1
        continue 
    require 0 < stor0.length
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'A new owner address should be not empty'
    address(stor0.field_768) = address(arg2)
    return 0
}

function sub_9bab7f4a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    idx = 0
    while idx < sub_dc0985c3.length:
        mem[0] = 1
        idx = idx + 1
        continue 
    require 0 < stor0.length
    stor0[6][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 0
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_0633d553(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require ceil32(('cd', 68).length) + 160 >= 128 and (32 * ('cd', 4).length) + ceil32(('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require ceil32(('cd', 100).length) + 192 >= 160 and (32 * ('cd', 4).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 192 <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require ceil32(('cd', 196).length) + 224 >= 192 and (32 * ('cd', 4).length) + ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + ceil32(('cd', 196).length) + 224 <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    stor0.length++
    address(stor0[stor0.length].field_0) = address(cd[36])
    stor[sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)][] = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
    stor[sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e565)][] = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
    stor290D[stor0.length] = address(cd[132])
    stor290D[stor0.length] = cd[164]
    stor[sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)][] = Array(len=('cd', 196).length, data=call.data[cd[196] + 36 len ('cd', 196).length])
    bool(stor290D[stor0.length].field_0) = 0
    uint255(stor290D[stor0.length].field_1) = 4
    Mask(248, 0, stor290D[stor0.length].field_8) = 0x4f70656e000000000000000000000000000000000000000000000000000000
    idx = 0
    while stor[(8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569].length + 31 / 32 > idx:
        stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569)] = 0
        idx = idx + 1
        continue 
    stor290D[stor0.length] = 0
    sub_dc0985c3.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_dc0985c3.length > idx:
            address(sub_dc0985c3[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_dc0985c3[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_dc0985c3.length > idx:
            address(sub_dc0985c3[idx]) = 0
            idx = idx + 1
            continue 
    return 0
}

function getAllPhotos() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    s = 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        _159 = mem[64]
        mem[64] = mem[64] + 256
        mem[_159] = address(stor0[idx].field_0)
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor0', 0) + (8 * idx) + 1].length) + 32
        mem[_160] = stor[('name', 'stor0', 0) + (8 * idx) + 1].length
        mem[0] = sha3(0) + (8 * idx) + 1
        mem[_160 + 32] = stor[sha3(('name', 'stor0', 0) + (8 * idx) + 1)].field_0
        t = _160 + 32
        u = sha3(mem[0])
        while _160 + stor[('name', 'stor0', 0) + (8 * idx) + 1].length > t:
            mem[t + 32] = uint256(sub_dc0985c3[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_159 + 32] = _160
        _318 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor0', 0) + (8 * idx) + 2].length) + 32
        mem[_318] = stor[('name', 'stor0', 0) + (8 * idx) + 2].length
        mem[0] = sha3(0) + (8 * idx) + 2
        mem[_318 + 32] = stor[sha3(('name', 'stor0', 0) + (8 * idx) + 2)].field_0
        t = _318 + 32
        u = sha3(mem[0])
        while _318 + stor[('name', 'stor0', 0) + (8 * idx) + 2].length > t:
            mem[t + 32] = uint256(sub_dc0985c3[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_159 + 64] = _318
        mem[_159 + 96] = address(stor0[idx].field_768)
        mem[_159 + 128] = stor0[idx].field_1024
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor0', 0) + (8 * idx) + 5].length) + 32
        mem[_439] = stor[('name', 'stor0', 0) + (8 * idx) + 5].length
        mem[0] = sha3(0) + (8 * idx) + 5
        mem[_439 + 32] = stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0
        t = _439 + 32
        u = sha3(mem[0])
        while _439 + stor[('name', 'stor0', 0) + (8 * idx) + 5].length > t:
            mem[t + 32] = uint256(sub_dc0985c3[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_159 + 160] = _439
        _521 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor0', 0) + (8 * idx) + 6].length) + 32
        mem[_521] = stor[('name', 'stor0', 0) + (8 * idx) + 6].length
        mem[0] = sha3(0) + (8 * idx) + 6
        mem[_521 + 32] = stor[sha3(('name', 'stor0', 0) + (8 * idx) + 6)].field_0
        t = _521 + 32
        u = sha3(mem[0])
        while _521 + stor[('name', 'stor0', 0) + (8 * idx) + 6].length > t:
            mem[t + 32] = uint256(sub_dc0985c3[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_159 + 192] = _521
        mem[_159 + 224] = stor0[idx].field_1792
        mem[s] = _159
        s = s + 32
        idx = idx + 1
        continue 
    _162 = mem[64]
    mem[mem[64]] = 32
    _171 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _171:
        mem[u] = t + -_162 - 64
        _314 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _363 = mem[_314 + 32]
        mem[t + 32] = 256
        _367 = mem[_363]
        mem[t + 256] = mem[_363]
        v = 0
        while v < _367:
            mem[v + t + 288] = mem[v + _363 + 32]
            v = v + 32
            continue 
        if ceil32(_367) <= _367:
            _450 = mem[_314 + 64]
            mem[t + 64] = ceil32(_367) + 288
            _454 = mem[_450]
            mem[t + ceil32(_367) + 288] = mem[_450]
            v = 0
            while v < _454:
                mem[v + t + ceil32(_367) + 320] = mem[v + _450 + 32]
                v = v + 32
                continue 
            if ceil32(_454) <= _454:
                mem[t + 96] = mem[_314 + 108 len 20]
                mem[t + 128] = mem[_314 + 128]
                _531 = mem[_314 + 160]
                mem[t + 160] = ceil32(_367) + ceil32(_454) + 320
                _535 = mem[_531]
                mem[t + ceil32(_367) + ceil32(_454) + 320] = mem[_531]
                v = 0
                while v < _535:
                    mem[v + t + ceil32(_367) + ceil32(_454) + 352] = mem[v + _531 + 32]
                    v = v + 32
                    continue 
                if ceil32(_535) <= _535:
                    _587 = mem[_314 + 192]
                    mem[t + 192] = ceil32(_367) + ceil32(_454) + ceil32(_535) + 352
                    _595 = mem[_587]
                    mem[t + ceil32(_367) + ceil32(_454) + ceil32(_535) + 352] = mem[_587]
                    v = 0
                    while v < _595:
                        mem[v + t + ceil32(_367) + ceil32(_454) + ceil32(_535) + 384] = mem[v + _587 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_595) > _595:
                        mem[t + ceil32(_367) + ceil32(_454) + ceil32(_535) + _595 + 384] = 0
                    mem[t + 224] = mem[_314 + 224]
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_367) + ceil32(_454) + ceil32(_535) + ceil32(_595) + 384
                    u = u + 32
                    continue 
                mem[t + ceil32(_367) + ceil32(_454) + _535 + 352] = 0
                _591 = mem[_314 + 192]
                mem[t + 192] = ceil32(_367) + ceil32(_454) + ceil32(_535) + 352
                _599 = mem[_591]
                mem[t + ceil32(_367) + ceil32(_454) + ceil32(_535) + 352] = mem[_591]
                v = 0
                while v < _599:
                    mem[v + t + ceil32(_367) + ceil32(_454) + ceil32(_535) + 384] = mem[v + _591 + 32]
                    v = v + 32
                    continue 
                if ceil32(_599) > _599:
                    mem[t + ceil32(_367) + ceil32(_454) + ceil32(_535) + _599 + 384] = 0
                mem[t + 224] = mem[_314 + 224]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_367) + ceil32(_454) + ceil32(_535) + ceil32(_599) + 384
                u = u + 32
                continue 
            mem[t + ceil32(_367) + _454 + 320] = 0
            mem[t + 96] = mem[_314 + 108 len 20]
            mem[t + 128] = mem[_314 + 128]
            _533 = mem[_314 + 160]
            mem[t + 160] = ceil32(_367) + ceil32(_454) + 320
            _537 = mem[_533]
            mem[t + ceil32(_367) + ceil32(_454) + 320] = mem[_533]
            v = 0
            while v < _537:
                mem[v + t + ceil32(_367) + ceil32(_454) + 352] = mem[v + _533 + 32]
                v = v + 32
                continue 
            if ceil32(_537) <= _537:
                _588 = mem[_314 + 192]
                mem[t + 192] = ceil32(_367) + ceil32(_454) + ceil32(_537) + 352
                _596 = mem[_588]
                mem[t + ceil32(_367) + ceil32(_454) + ceil32(_537) + 352] = mem[_588]
                v = 0
                while v < _596:
                    mem[v + t + ceil32(_367) + ceil32(_454) + ceil32(_537) + 384] = mem[v + _588 + 32]
                    v = v + 32
                    continue 
                if ceil32(_596) > _596:
                    mem[t + ceil32(_367) + ceil32(_454) + ceil32(_537) + _596 + 384] = 0
                mem[t + 224] = mem[_314 + 224]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_367) + ceil32(_454) + ceil32(_537) + ceil32(_596) + 384
                u = u + 32
                continue 
            mem[t + ceil32(_367) + ceil32(_454) + _537 + 352] = 0
            _592 = mem[_314 + 192]
            mem[t + 192] = ceil32(_367) + ceil32(_454) + ceil32(_537) + 352
            _600 = mem[_592]
            mem[t + ceil32(_367) + ceil32(_454) + ceil32(_537) + 352] = mem[_592]
            v = 0
            while v < _600:
                mem[v + t + ceil32(_367) + ceil32(_454) + ceil32(_537) + 384] = mem[v + _592 + 32]
                v = v + 32
                continue 
            if ceil32(_600) > _600:
                mem[t + ceil32(_367) + ceil32(_454) + ceil32(_537) + _600 + 384] = 0
            mem[t + 224] = mem[_314 + 224]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_367) + ceil32(_454) + ceil32(_537) + ceil32(_600) + 384
            u = u + 32
            continue 
        mem[t + _367 + 288] = 0
        _451 = mem[_314 + 64]
        mem[t + 64] = ceil32(_367) + 288
        _455 = mem[_451]
        mem[t + ceil32(_367) + 288] = mem[_451]
        v = 0
        while v < _455:
            mem[v + t + ceil32(_367) + 320] = mem[v + _451 + 32]
            v = v + 32
            continue 
        if ceil32(_455) <= _455:
            mem[t + 96] = mem[_314 + 108 len 20]
            mem[t + 128] = mem[_314 + 128]
            _532 = mem[_314 + 160]
            mem[t + 160] = ceil32(_367) + ceil32(_455) + 320
            _536 = mem[_532]
            mem[t + ceil32(_367) + ceil32(_455) + 320] = mem[_532]
            v = 0
            while v < _536:
                mem[v + t + ceil32(_367) + ceil32(_455) + 352] = mem[v + _532 + 32]
                v = v + 32
                continue 
            if ceil32(_536) <= _536:
                _589 = mem[_314 + 192]
                mem[t + 192] = ceil32(_367) + ceil32(_455) + ceil32(_536) + 352
                _597 = mem[_589]
                mem[t + ceil32(_367) + ceil32(_455) + ceil32(_536) + 352] = mem[_589]
                v = 0
                while v < _597:
                    mem[v + t + ceil32(_367) + ceil32(_455) + ceil32(_536) + 384] = mem[v + _589 + 32]
                    v = v + 32
                    continue 
                if ceil32(_597) > _597:
                    mem[t + ceil32(_367) + ceil32(_455) + ceil32(_536) + _597 + 384] = 0
                mem[t + 224] = mem[_314 + 224]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_367) + ceil32(_455) + ceil32(_536) + ceil32(_597) + 384
                u = u + 32
                continue 
            mem[t + ceil32(_367) + ceil32(_455) + _536 + 352] = 0
            _593 = mem[_314 + 192]
            mem[t + 192] = ceil32(_367) + ceil32(_455) + ceil32(_536) + 352
            _601 = mem[_593]
            mem[t + ceil32(_367) + ceil32(_455) + ceil32(_536) + 352] = mem[_593]
            v = 0
            while v < _601:
                mem[v + t + ceil32(_367) + ceil32(_455) + ceil32(_536) + 384] = mem[v + _593 + 32]
                v = v + 32
                continue 
            if ceil32(_601) > _601:
                mem[t + ceil32(_367) + ceil32(_455) + ceil32(_536) + _601 + 384] = 0
            mem[t + 224] = mem[_314 + 224]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_367) + ceil32(_455) + ceil32(_536) + ceil32(_601) + 384
            u = u + 32
            continue 
        mem[t + ceil32(_367) + _455 + 320] = 0
        mem[t + 96] = mem[_314 + 108 len 20]
        mem[t + 128] = mem[_314 + 128]
        _534 = mem[_314 + 160]
        mem[t + 160] = ceil32(_367) + ceil32(_455) + 320
        _538 = mem[_534]
        mem[t + ceil32(_367) + ceil32(_455) + 320] = mem[_534]
        v = 0
        while v < _538:
            mem[v + t + ceil32(_367) + ceil32(_455) + 352] = mem[v + _534 + 32]
            v = v + 32
            continue 
        if ceil32(_538) <= _538:
            _590 = mem[_314 + 192]
            mem[t + 192] = ceil32(_367) + ceil32(_455) + ceil32(_538) + 352
            _598 = mem[_590]
            mem[t + ceil32(_367) + ceil32(_455) + ceil32(_538) + 352] = mem[_590]
            v = 0
            while v < _598:
                mem[v + t + ceil32(_367) + ceil32(_455) + ceil32(_538) + 384] = mem[v + _590 + 32]
                v = v + 32
                continue 
            if ceil32(_598) > _598:
                mem[t + ceil32(_367) + ceil32(_455) + ceil32(_538) + _598 + 384] = 0
            mem[t + 224] = mem[_314 + 224]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_367) + ceil32(_455) + ceil32(_538) + ceil32(_598) + 384
            u = u + 32
            continue 
        mem[t + ceil32(_367) + ceil32(_455) + _538 + 352] = 0
        _594 = mem[_314 + 192]
        mem[t + 192] = ceil32(_367) + ceil32(_455) + ceil32(_538) + 352
        _602 = mem[_594]
        mem[t + ceil32(_367) + ceil32(_455) + ceil32(_538) + 352] = mem[_594]
        v = 0
        while v < _602:
            mem[v + t + ceil32(_367) + ceil32(_455) + ceil32(_538) + 384] = mem[v + _594 + 32]
            v = v + 32
            continue 
        if ceil32(_602) > _602:
            mem[t + ceil32(_367) + ceil32(_455) + ceil32(_538) + _602 + 384] = 0
        mem[t + 224] = mem[_314 + 224]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_367) + ceil32(_455) + ceil32(_538) + ceil32(_602) + 384
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
