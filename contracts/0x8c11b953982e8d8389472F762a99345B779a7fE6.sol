contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 ri;
uint256 period;
address stor3;
address stor4;
uint256 sub_8f05cdf5;

function ri() {
    return ri
}

function sub_8f05cdf5(?) {
    return sub_8f05cdf5
}

function period() {
    return period
}

function _fallback() payable {
    revert
}

function setPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    period = arg1
}

function sub_a0491b7e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    stor4 = address(arg1)
}

function getCurrentRound() {
    require ri < stor0.length
    return stor0[stor1].field_512, 
           stor0[stor1].field_768,
           stor0[stor1].field_1024,
           stor0[stor1].field_1280,
           stor0[stor1].field_1536,
           stor0[stor1].field_1792,
           stor0[stor1].field_2048
}

function sub_19506fe3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    return stor0[arg1].field_512, 
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048
}

function sub_8b062114(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    return stor0[arg1].field_512, 
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048
}

function getOracle() {
    require ext_code.size(stor4)
    staticcall stor4.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 'FTM', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 192 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0]
}

function rescue(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only E.L.I.T.E. D.A.O. Treasury can have the treasures!'
    if not arg1:
        call stor3 with:
           value arg2 wei
             gas gas_remaining wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_b019e51b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'Eliteness insufficient to graze the Farmlands.'
    if arg1 > ri - 2:
        revert with 0, 'Too early to cla'
    require arg1 < stor0.length
    require arg1 < stor0.length
    if stor0[arg1].field_1024 < stor0[arg1].field_1280:
        if bool(stor0[arg1][address(msg.sender)].field_0) != 1:
            revert with 0, 'unknown hia'
        require arg1 < stor0.length
        stor0[arg1][address(msg.sender)].field_0 = 0
    else:
        if stor0[arg1].field_1024 <= stor0[arg1].field_1280:
            revert with 0, 'Claim failed. Contact Sam4x.'
        require arg1 < stor0.length
        if bool(stor[(9 * arg1) + ('name', 'stor0', 0) + 1][address(msg.sender)].field_0) != 1:
            revert with 0, 'unknown loa'
        require arg1 < stor0.length
        stor[(9 * arg1) + ('name', 'stor0', 0) + 1][address(msg.sender)].field_0 = 0
    call msg.sender with:
       value stor0[arg1].field_2048 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Claim failed. Contact Sam4x.'
}

function nextRound() {
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'Eliteness insufficient to graze the Farmlands.'
    require ri < stor0.length
    if block.timestamp <= stor0[stor1].field_1792:
        revert with 0, 'Wait more plis!'
    require ext_code.size(stor4)
    staticcall stor4.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 'FTM', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((2 * ceil32(return_data.size)) + 192 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ri < stor0.length
    stor0[stor1].field_1024 = ext_call.return_data[0]
    require ri - 1 < stor0.length
    stor0[stor1].field_0 = ext_call.return_data[0]
    require ri - 1 < stor0.length
    require ri - 1 < stor0.length
    if stor0[stor1].field_0 <= stor0[stor1].field_0:
        if stor0[stor1].field_0 >= stor0[stor1].field_0:
            stor0[stor1].field_0 = 0
        else:
            require ri - 1 < stor0.length
            if stor0[stor1].field_0 * stor0[stor1].field_0 <= 0:
                stor0[stor1].field_0 = 0
            else:
                require stor0[stor1].field_0
                require ri - 1 < stor0.length
                stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
    else:
        if stor0[stor1].field_0 * stor0[stor1].field_0 > 0:
            require stor0[stor1].field_0
            require ri - 1 < stor0.length
            stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
        else:
            require ri - 1 < stor0.length
            if stor0[stor1].field_0 >= stor0[stor1].field_0:
                stor0[stor1].field_0 = 0
            else:
                require ri - 1 < stor0.length
                if stor0[stor1].field_0 * stor0[stor1].field_0 <= 0:
                    stor0[stor1].field_0 = 0
                else:
                    require stor0[stor1].field_0
                    require ri - 1 < stor0.length
                    stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
    stor0.length++
    stor0[stor0.length].field_512 = 0
    stor0[stor0.length].field_768 = 0
    stor0[stor0.length].field_1024 = 0
    stor0[stor0.length].field_1280 = 0
    stor0[stor0.length].field_1536 = block.timestamp
    stor0[stor0.length].field_1792 = block.timestamp + period
    stor0[stor0.length].field_2048 = 0
    ri++
}

function sub_fd8607e5(?) payable {
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'Eliteness insufficient to graze the Farmlands.'
    require ri < stor0.length
    if block.timestamp > stor0[stor1].field_1792:
        require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
        staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 1337 * 10^12:
            revert with 0, 'Eliteness insufficient to graze the Farmlands.'
        require ri < stor0.length
        if block.timestamp <= stor0[stor1].field_1792:
            revert with 0, 'Wait more plis!'
        require ext_code.size(stor4)
        staticcall stor4.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 'FTM', 3, 'USD'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool((4 * ceil32(return_data.size)) + 192 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ri < stor0.length
        stor0[stor1].field_1024 = ext_call.return_data[0]
        require ri - 1 < stor0.length
        stor0[stor1].field_0 = ext_call.return_data[0]
        require ri - 1 < stor0.length
        require ri - 1 < stor0.length
        if stor0[stor1].field_0 <= stor0[stor1].field_0:
            if stor0[stor1].field_0 >= stor0[stor1].field_0:
                stor0[stor1].field_0 = 0
            else:
                require ri - 1 < stor0.length
                if stor0[stor1].field_0 * stor0[stor1].field_0 <= 0:
                    stor0[stor1].field_0 = 0
                else:
                    require stor0[stor1].field_0
                    require ri - 1 < stor0.length
                    stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
        else:
            if stor0[stor1].field_0 * stor0[stor1].field_0 > 0:
                require stor0[stor1].field_0
                require ri - 1 < stor0.length
                stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
            else:
                require ri - 1 < stor0.length
                if stor0[stor1].field_0 >= stor0[stor1].field_0:
                    stor0[stor1].field_0 = 0
                else:
                    require ri - 1 < stor0.length
                    if stor0[stor1].field_0 * stor0[stor1].field_0 <= 0:
                        stor0[stor1].field_0 = 0
                    else:
                        require stor0[stor1].field_0
                        require ri - 1 < stor0.length
                        stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
        stor0.length++
        stor0[stor0.length].field_512 = 0
        stor0[stor0.length].field_768 = 0
        stor0[stor0.length].field_1024 = 0
        stor0[stor0.length].field_1280 = 0
        stor0[stor0.length].field_1536 = block.timestamp
        stor0[stor0.length].field_1792 = block.timestamp + period
        stor0[stor0.length].field_2048 = 0
        ri++
    require ri < stor0.length
    if stor0[stor1][address(msg.sender)].field_0:
        revert with 0, 'Dont bh again'
    if sub_8f05cdf5 != msg.value:
        revert with 0, 'incorrect amount wagered'
    require ri < stor0.length
    stor0[stor1][address(msg.sender)].field_0 = 1
    stor0[stor1].field_512++
}

function bl() payable {
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'Eliteness insufficient to graze the Farmlands.'
    require ri < stor0.length
    if block.timestamp > stor0[stor1].field_1792:
        require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
        staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 1337 * 10^12:
            revert with 0, 'Eliteness insufficient to graze the Farmlands.'
        require ri < stor0.length
        if block.timestamp <= stor0[stor1].field_1792:
            revert with 0, 'Wait more plis!'
        require ext_code.size(stor4)
        staticcall stor4.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 'FTM', 3, 'USD'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool((4 * ceil32(return_data.size)) + 192 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ri < stor0.length
        stor0[stor1].field_1024 = ext_call.return_data[0]
        require ri - 1 < stor0.length
        stor0[stor1].field_0 = ext_call.return_data[0]
        require ri - 1 < stor0.length
        require ri - 1 < stor0.length
        if stor0[stor1].field_0 <= stor0[stor1].field_0:
            if stor0[stor1].field_0 >= stor0[stor1].field_0:
                stor0[stor1].field_0 = 0
            else:
                require ri - 1 < stor0.length
                if stor0[stor1].field_0 * stor0[stor1].field_0 <= 0:
                    stor0[stor1].field_0 = 0
                else:
                    require stor0[stor1].field_0
                    require ri - 1 < stor0.length
                    stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
        else:
            if stor0[stor1].field_0 * stor0[stor1].field_0 > 0:
                require stor0[stor1].field_0
                require ri - 1 < stor0.length
                stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
            else:
                require ri - 1 < stor0.length
                if stor0[stor1].field_0 >= stor0[stor1].field_0:
                    stor0[stor1].field_0 = 0
                else:
                    require ri - 1 < stor0.length
                    if stor0[stor1].field_0 * stor0[stor1].field_0 <= 0:
                        stor0[stor1].field_0 = 0
                    else:
                        require stor0[stor1].field_0
                        require ri - 1 < stor0.length
                        stor0[stor1].field_0 = (stor0[stor1].field_0 * sub_8f05cdf5) + (stor0[stor1].field_0 * sub_8f05cdf5) / stor0[stor1].field_0
        stor0.length++
        stor0[stor0.length].field_512 = 0
        stor0[stor0.length].field_768 = 0
        stor0[stor0.length].field_1024 = 0
        stor0[stor0.length].field_1280 = 0
        stor0[stor0.length].field_1536 = block.timestamp
        stor0[stor0.length].field_1792 = block.timestamp + period
        stor0[stor0.length].field_2048 = 0
        ri++
    require ri < stor0.length
    if stor[(9 * stor1) + ('name', 'stor0', 0) + 1][address(msg.sender)].field_0:
        revert with 0, 'Dont bl again'
    if sub_8f05cdf5 != msg.value:
        revert with 0, 'incorrect amount wagered'
    require ri < stor0.length
    stor[(9 * stor1) + ('name', 'stor0', 0) + 1][address(msg.sender)].field_0 = 1
    stor0[stor1].field_768++
}



}
