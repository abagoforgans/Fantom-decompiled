contract main {




// =====================  Runtime code  =====================


const sub_54e4c7a2(?) = 0x865377367054516e17014ccded1e7d814edc9ce4

const sub_aa22b69c(?) = 0x3129662808bec728a27ab6a6b9afd3cbaca8a43c

const sub_e589bccc(?) = 0xc564ee9f21ed8a2d8e7e76c085740d5e4c5fafbe

const sub_e68e42d4(?) = 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a

const GOV = 0x926df14a23be491164dcf93f4c468a50ef659d5b


address sub_fdf893f5Address;
address sub_008e6dcfAddress;
uint256 sub_372673bb;
uint256 sub_8e2313d5;

function sub_008e6dcf(?) payable {
    return sub_008e6dcfAddress
}

function sub_372673bb(?) payable {
    return sub_372673bb
}

function sub_8e2313d5(?) payable {
    return sub_8e2313d5
}

function sub_fdf893f5(?) payable {
    return sub_fdf893f5Address
}

function _fallback() payable {
    revert
}

function sub_592fdad3(?) payable {
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_8e2313d5 > -1209601:
        revert with 0, 17
    return (sub_8e2313d5 + (336 * 24 * 3600) > block.timestamp)
}

function changeChair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_fdf893f5Address != msg.sender:
        if msg.sender != 0x926df14a23be491164dcf93f4c468a50ef659d5b:
            revert with 0, 'ONLY CHAIN OR GOV'
    sub_fdf893f5Address = arg1
}

function sub_5dc04535(?) payable {
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_008e6dcfAddress != msg.sender:
        revert with 0, 'ONLY BOARD CAN UNSUSPEND CHAIR'
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_8e2313d5 > -1209601:
        revert with 0, 17
    if sub_8e2313d5 + (336 * 24 * 3600) <= block.timestamp:
        revert with 0, 'CHAIR NOT SUSPENDED'
    sub_8e2313d5 = 0
}

function sub_200c6e50(?) payable {
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_008e6dcfAddress != msg.sender:
        revert with 0, 'ONLY BOARD CAN SUSPEND CHAIR'
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_8e2313d5 > -1209601:
        revert with 0, 17
    if sub_8e2313d5 + (336 * 24 * 3600) > block.timestamp:
        revert with 0, 'CHAIR ALREADY SUSPENDED'
    sub_8e2313d5 = block.timestamp
}

function sub_b158203f(?) payable {
    require calldata.size - 4 >= 32
    if sub_fdf893f5Address != msg.sender:
        if msg.sender != 0x926df14a23be491164dcf93f4c468a50ef659d5b:
            revert with 0, 'ONLY CHAIN OR GOV'
    if chainid != 1:
        revert with 0, 'WRONG CHAIN'
    require ext_code.size(0x865377367054516e17014ccded1e7d814edc9ce4)
    call 0x865377367054516e17014ccded1e7d814edc9ce4.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ac4fd07d(?) payable {
    require calldata.size - 4 >= 32
    if sub_fdf893f5Address != msg.sender:
        if msg.sender != 0x926df14a23be491164dcf93f4c468a50ef659d5b:
            revert with 0, 'ONLY CHAIN OR GOV'
    if chainid != 1:
        revert with 0, 'WRONG CHAIN'
    require ext_code.size(0x865377367054516e17014ccded1e7d814edc9ce4)
    call 0x865377367054516e17014ccded1e7d814edc9ce4.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_64011df2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_008e6dcfAddress:
        if sub_008e6dcfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY BOARD CAN CHANGE ITS OWN ADDRESS'
    else:
        if sub_fdf893f5Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY CHAIR CAN SET BOARD FOR THE FIRST TIME'
    sub_008e6dcfAddress = address(arg1)
}

function sub_632f43c5(?) payable {
    require calldata.size - 4 >= 32
    if sub_fdf893f5Address != msg.sender:
        if msg.sender != 0x926df14a23be491164dcf93f4c468a50ef659d5b:
            revert with 0, 'ONLY CHAIN OR GOV'
    if chainid != 1:
        revert with 0, 'WRONG CHAIN'
    require ext_code.size(0x865377367054516e17014ccded1e7d814edc9ce4)
    call 0x865377367054516e17014ccded1e7d814edc9ce4.0xa9059cbb with:
         gas gas_remaining wei
        args 0xc564ee9f21ed8a2d8e7e76c085740d5e4c5fafbe, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_074f41d5(?) payable {
    require calldata.size - 4 >= 32
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_fdf893f5Address != msg.sender:
        if sub_008e6dcfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only chair or board can transfer reserves to source'
    require arg1 >= 5000 * 10^18
    require ext_code.size(0x3129662808bec728a27ab6a6b9afd3cbaca8a43c)
    call 0x3129662808bec728a27ab6a6b9afd3cbaca8a43c.Swapout(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function sub_5628ad1c(?) payable {
    require calldata.size - 4 >= 32
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_fdf893f5Address != msg.sender:
        if sub_008e6dcfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only chair or board can call contraction'
    if arg1 > sub_372673bb:
        revert with 0, 'AMOUNT TOO BIG'
    require ext_code.size(0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a)
    call 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Redeem failed'
    if sub_372673bb < arg1:
        revert with 0, 17
    sub_372673bb -= arg1
    emit Contraction(arg1);
}

function sweep(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_fdf893f5Address != msg.sender:
        if msg.sender != 0x926df14a23be491164dcf93f4c468a50ef659d5b:
            revert with 0, 'ONLY CHAIN OR GOV'
    if 0x865377367054516e17014ccded1e7d814edc9ce4 == arg1:
        revert with 0, 'cannot steal DOLA'
    if 0x3129662808bec728a27ab6a6b9afd3cbaca8a43c == arg1:
        revert with 0, 'cannot steal DOLA'
    if 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a == arg1:
        revert with 0, 'cannot steal DOLA'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_eee15c35(?) payable {
    require calldata.size - 4 >= 32
    if sub_fdf893f5Address != msg.sender:
        if msg.sender != 0x926df14a23be491164dcf93f4c468a50ef659d5b:
            revert with 0, 'ONLY CHAIN OR GOV'
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    if sub_8e2313d5 > -1209601:
        revert with 0, 17
    if sub_8e2313d5 + (336 * 24 * 3600) > block.timestamp:
        revert with 0, 'Chair is suspended'
    require ext_code.size(0x3129662808bec728a27ab6a6b9afd3cbaca8a43c)
    call 0x3129662808bec728a27ab6a6b9afd3cbaca8a43c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a)
    call 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Supplying failed'
    if sub_372673bb > !arg1:
        revert with 0, 17
    sub_372673bb += arg1
    emit Expansion(arg1);
}

function sub_ed83ba1b(?) payable {
    if 1 == chainid:
        revert with 0, 'WRONG CHAIN'
    require ext_code.size(0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a)
    call 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_372673bb:
        revert with 0, 17
    if ext_call.return_data[0] - sub_372673bb < 5000 * 10^18:
        revert with 0, 'Not enough profit'
    require ext_code.size(0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a)
    call 0x5a3b9dcdd462f264ec1bd56d618bf4552c2eaf8a.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - sub_372673bb)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Redeem failed'
    require ext_code.size(0x3129662808bec728a27ab6a6b9afd3cbaca8a43c)
    call 0x3129662808bec728a27ab6a6b9afd3cbaca8a43c.Swapout(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] - sub_372673bb, 0x926df14a23be491164dcf93f4c468a50ef659d5b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}



}
