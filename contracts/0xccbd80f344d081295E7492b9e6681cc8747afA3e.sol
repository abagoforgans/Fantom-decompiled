contract main {




// =====================  Runtime code  =====================


#
#  - sub_a827ef08(?)
#
uint8 stor1; offset 160
address owner;
uint16 stor2;
uint256 stor2; offset 16
uint256 goodwill;

function paused() {
    return bool(stor1)
}

function goodwill() {
    return goodwill
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setGoodwill(uint16 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0, 'Invalid goodWill value'
    if arg1 > 100:
        revert with 0, 'Invalid goodWill value'
    uint16(stor2.field_0) = arg1
    Mask(240, 0, stor2.field_16) = 0
}

function transferOwnership(address arg1) {
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

function withdrawTokens(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if not address(cd[((32 * idx) + arg1 + 36)]):
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'Address: insufficient balance'
            call owner with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if return_data.size:
                _67 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_67] = return_data.size
                mem[_67 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[mem[64] + 126 len 6]
            idx = idx + 1
            continue 
        require idx < arg1.length
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _68 = mem[64]
        mem[mem[64] + 36] = owner
        mem[mem[64] + 68] = ext_call.return_data[0]
        _69 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_69 + 32] = mem[_69 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _68 + 164
        mem[_68 + 100] = 32
        mem[_68 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_68 + 270 len 26]
        if ext_code.size(address(cd[((32 * idx) + arg1 + 36)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _79 = mem[_69]
        t = _69 + 32
        u = _68 + 164
        s = mem[_69]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_68 + floor32(mem[_69]) + 164] = mem[_69 + -(mem[_69] % 32) + floor32(mem[_69]) + 64 len mem[_69] % 32] or Mask(8 * -(mem[_69] % 32) + 32, -(8 * -(mem[_69] % 32) + 32) + 256, mem[_68 + floor32(mem[_69]) + 164])
        call address(cd[((32 * idx) + arg1 + 36)]).mem[_68 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_68 + 168 len _79 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_68 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_68 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_68 + 168] = 32
            mem[_68 + 200] = 32
            idx = 0
            while idx < 32:
                mem[_68 + idx + 232] = mem[_68 + idx + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _68 + -mem[64] + 264
        mem[64] = _68 + ceil32(return_data.size) + 165
        mem[_68 + 164] = return_data.size
        mem[_68 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_68 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_68 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_68 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_68 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[_68 + ceil32(return_data.size) + idx + 233] = mem[_68 + idx + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_68 + ceil32(return_data.size) + 233]
}



}
