contract main {




// =====================  Runtime code  =====================


#
#  - addAirdroppingPoints(address arg1, uint256 arg2)
#  - cropDust(address[] arg1)
#
array of address stor1;
array of address stor73195239900706427565369301095818500972683765191739102056824535683693100731865;
mapping of uint256 stor73195239900706427565369301095818500972683765191739102056824535683693100731866;
uint256 cropDustAmount;

function cropDustAmount() payable {
    return cropDustAmount
}

function _fallback() payable {
    revert
}

function changeCropDustAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1.length != msg.sender:
        revert with 0, 'owner'
    cropDustAmount = arg1
}

function blacklist() payable {
    mem[64] = (32 * storA1D3.length) + 128
    mem[96] = storA1D3.length
    if not storA1D3.length:
        mem[(32 * storA1D3.length) + 128] = 32
        mem[(32 * storA1D3.length) + 160] = storA1D3.length
        idx = 0
        s = (32 * storA1D3.length) + 192
        t = 128
        while idx < storA1D3.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * storA1D3.length) + 128
           len (96 * storA1D3.length) + 64
    mem[128] = storA1D3
    idx = 128
    s = sha3(0xa1d309a4684c71914318e375bfeecdab8dee2775745cd389020cf9de2a1d0dd9)
    while (32 * storA1D3.length) + 96 > idx:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * storA1D3.length) + 128] = 32
    mem[(32 * storA1D3.length) + 160] = storA1D3.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < storA1D3.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * storA1D3.length) + -mem[64] + 192
}

function blacklistCut(uint8 arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    if stor1.length != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require calldata.size + -(64 * idx) + -arg1 - 36 >= 64
        _89 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + arg1 + 36)] < 2
        mem[_89] = cd[((64 * idx) + arg1 + 36)]
        require cd[((64 * idx) + arg1 + 68)] == address(cd[((64 * idx) + arg1 + 68)])
        mem[_89 + 32] = cd[((64 * idx) + arg1 + 68)]
        if cd[((64 * idx) + arg1 + 36)] > 1:
            revert with 'NH{q', 33
        if cd[((64 * idx) + arg1 + 36)]:
            if cd[((64 * idx) + arg1 + 36)] > 1:
                revert with 'NH{q', 33
            if cd[((64 * idx) + arg1 + 36)] != 1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if not storA1D3.length:
                revert with 0, 'address remove'
            if not storA1D3[address(cd[((64 * idx) + arg1 + 68)])]:
                if 0 >= storA1D3.length:
                    revert with 'NH{q', 50
                if storA1D3 != address(cd[((64 * idx) + arg1 + 68)]):
                    revert with 0, 'address remove'
            if storA1D3.length < 1:
                revert with 'NH{q', 17
            if storA1D3.length - 1 >= storA1D3.length:
                revert with 'NH{q', 50
            if storA1D3[storA1D3.length] != address(cd[((64 * idx) + arg1 + 68)]):
                storA1D3[storA1D3[storA1D3.length]] = storA1D3[address(cd[((64 * idx) + arg1 + 68)])]
                if storA1D3[address(cd[((64 * idx) + arg1 + 68)])] >= storA1D3.length:
                    revert with 'NH{q', 50
                storA1D3[storA1D3[address(cd[((64 * idx) + arg1 + 68)])]] = storA1D3[storA1D3.length]
            if not storA1D3.length:
                revert with 'NH{q', 49
            storA1D3[storA1D3.length] = 0
            storA1D3.length--
            mem[0] = address(cd[((64 * idx) + arg1 + 68)])
            mem[32] = 0xa1d309a4684c71914318e375bfeecdab8dee2775745cd389020cf9de2a1d0dda
            storA1D3[address(cd[((64 * idx) + arg1 + 68)])] = 0
            if s:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
        else:
            if storA1D3.length:
                if storA1D3[address(cd[((64 * idx) + arg1 + 68)])]:
                    revert with 0, 'address add'
                if 0 >= storA1D3.length:
                    revert with 'NH{q', 50
                if storA1D3 == address(cd[((64 * idx) + arg1 + 68)]):
                    revert with 0, 'address add'
            mem[32] = 0xa1d309a4684c71914318e375bfeecdab8dee2775745cd389020cf9de2a1d0dda
            storA1D3[address(cd[((64 * idx) + arg1 + 68)])] = storA1D3.length
            storA1D3.length++
            mem[0] = 0xa1d309a4684c71914318e375bfeecdab8dee2775745cd389020cf9de2a1d0dd9
            storA1D3[storA1D3.length] = address(cd[((64 * idx) + arg1 + 68)])
            if cd[((64 * idx) + arg1 + 36)] > 1:
                revert with 'NH{q', 33
            if not s:
                if cd[((64 * idx) + arg1 + 36)] == 1:
                    if not storA1D3.length:
                        revert with 0, 'address remove'
                    if not storA1D3[address(cd[((64 * idx) + arg1 + 68)])]:
                        if 0 >= storA1D3.length:
                            revert with 'NH{q', 50
                        if storA1D3 != address(cd[((64 * idx) + arg1 + 68)]):
                            revert with 0, 'address remove'
                    if storA1D3.length < 1:
                        revert with 'NH{q', 17
                    if storA1D3.length - 1 >= storA1D3.length:
                        revert with 'NH{q', 50
                    if storA1D3[storA1D3.length] != address(cd[((64 * idx) + arg1 + 68)]):
                        storA1D3[storA1D3[storA1D3.length]] = storA1D3[address(cd[((64 * idx) + arg1 + 68)])]
                        if storA1D3[address(cd[((64 * idx) + arg1 + 68)])] >= storA1D3.length:
                            revert with 'NH{q', 50
                        storA1D3[storA1D3[address(cd[((64 * idx) + arg1 + 68)])]] = storA1D3[storA1D3.length]
                    if not storA1D3.length:
                        revert with 'NH{q', 49
                    storA1D3[storA1D3.length] = 0
                    storA1D3.length--
                    mem[0] = address(cd[((64 * idx) + arg1 + 68)])
                    mem[32] = 0xa1d309a4684c71914318e375bfeecdab8dee2775745cd389020cf9de2a1d0dda
                    storA1D3[address(cd[((64 * idx) + arg1 + 68)])] = 0
            else:
                if cd[((64 * idx) + arg1 + 36)] != 1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if not storA1D3.length:
                    revert with 0, 'address remove'
                if not storA1D3[address(cd[((64 * idx) + arg1 + 68)])]:
                    if 0 >= storA1D3.length:
                        revert with 'NH{q', 50
                    if storA1D3 != address(cd[((64 * idx) + arg1 + 68)]):
                        revert with 0, 'address remove'
                if storA1D3.length < 1:
                    revert with 'NH{q', 17
                if storA1D3.length - 1 >= storA1D3.length:
                    revert with 'NH{q', 50
                if storA1D3[storA1D3.length] != address(cd[((64 * idx) + arg1 + 68)]):
                    storA1D3[storA1D3[storA1D3.length]] = storA1D3[address(cd[((64 * idx) + arg1 + 68)])]
                    if storA1D3[address(cd[((64 * idx) + arg1 + 68)])] >= storA1D3.length:
                        revert with 'NH{q', 50
                    storA1D3[storA1D3[address(cd[((64 * idx) + arg1 + 68)])]] = storA1D3[storA1D3.length]
                if not storA1D3.length:
                    revert with 'NH{q', 49
                storA1D3[storA1D3.length] = 0
                storA1D3.length--
                mem[0] = address(cd[((64 * idx) + arg1 + 68)])
                mem[32] = 0xa1d309a4684c71914318e375bfeecdab8dee2775745cd389020cf9de2a1d0dda
                storA1D3[address(cd[((64 * idx) + arg1 + 68)])] = 0
                if s:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 1
        continue 
    if s:
        _88 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1.length
        idx = 0
        s = arg1 + 36
        t = mem[64] + 64
        while idx < arg1.length:
            require cd[s] < 2
            mem[t] = cd[s]
            require cd[(s + 32)] == address(cd[(s + 32)])
            mem[t + 32] = address(cd[(s + 32)])
            idx = idx + 1
            s = s + 64
            t = t + 64
            continue 
        emit 0xeff6e105: mem[mem[64] len _88 + (64 * arg1.length) + -mem[64] + 64]
}



}
