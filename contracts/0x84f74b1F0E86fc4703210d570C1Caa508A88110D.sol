contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_8b56341c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == mem[_21]
        if block.timestamp > mem[_21]:
            _23 = mem[64]
            mem[64] = mem[64] + 96
            mem[_23] = 33
            mem[_23 + 32 len 33] = 0xfe63616c6c696e6720616476656e7475726520666f722073756d6d6f6e65722025
            _24 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 33
            s = 0
            while s < 33:
                mem[mem[64] + s + 132] = mem[_23 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 165] = 0
            mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
            _41 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_41 + 32] = mem[_41 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_41 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_41 + 36 len mem[_41] - 4]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[_24 + 196] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[_24 + 200] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
