contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] < calldata.size + -arg1 + -cd[(arg1 + (32 * idx) + 36)] - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]] = 0
            call address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]]
            if not return_data.size:
                require ext_call.success
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
            else:
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_39] = return_data.size
                mem[_39 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _39
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _26 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 96
        u = mem[64] + 96
        while idx < _26:
            mem[u] = t + -_24 - 96
            _46 = mem[s]
            _49 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _49:
                mem[t + v + 32] = mem[_46 + v + 32]
                v = v + 32
                continue 
            if ceil32(_49) > _49:
                mem[t + _49 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_49) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] == address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)])
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] < calldata.size + -arg1 + -cd[(arg1 + (32 * idx) + 36)] - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]] = 0
            call address(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 68)] + 36)]]
            if not return_data.size:
                require ext_call.success
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
            else:
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_58] = return_data.size
                mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _58
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _47 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _50 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 96
        u = mem[64] + 96
        while idx < _50:
            mem[u] = t + -_47 - 96
            _62 = mem[s]
            _64 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _64:
                mem[t + v + 32] = mem[_62 + v + 32]
                v = v + 32
                continue 
            if ceil32(_64) > _64:
                mem[t + _64 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_64) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
