contract main {




// =====================  Runtime code  =====================


const FACTORY = 0xbfd1ce8e6d85e911e80c169293d5c1f5c950fe03


mapping of address registry;
mapping of uint8 stor1;
array of struct sub_52ee56cd;
address governanceAddress;

function registry(address arg1) payable {
    require calldata.size - 4 >= 32
    return registry[arg1]
}

function sub_52ee56cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_52ee56cd.length
    return sub_52ee56cd[arg1].field_0
}

function governance() payable {
    return governanceAddress
}

function deployed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 52, code.data[6213 len 52], mem[216 len 12]
    governanceAddress = arg1
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[6176 len 37], mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, 13822055842494933265, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, 13822055842494933265, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
}

function oracles() payable {
    if not sub_52ee56cd.length:
        mem[(32 * sub_52ee56cd.length) + 128] = 32
        mem[(32 * sub_52ee56cd.length) + 160] = sub_52ee56cd.length
        mem[(32 * sub_52ee56cd.length) + 192 len floor32(sub_52ee56cd.length)] = mem[128 len floor32(sub_52ee56cd.length)]
        return memory
          from (32 * sub_52ee56cd.length) + 128
           len (96 * sub_52ee56cd.length) + 64
    mem[128] = address(sub_52ee56cd.field_0)
    idx = 128
    s = 0
    while (32 * sub_52ee56cd.length) + 96 > idx:
        mem[idx + 32] = sub_52ee56cd[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_52ee56cd.length) + 192 len floor32(sub_52ee56cd.length)] = mem[128 len floor32(sub_52ee56cd.length)]
    return Array(len=sub_52ee56cd.length, data=mem[128 len floor32(sub_52ee56cd.length)], mem[(32 * sub_52ee56cd.length) + floor32(sub_52ee56cd.length) + 192 len (32 * sub_52ee56cd.length) - floor32(sub_52ee56cd.length)]), 
}

function update(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[6176 len 37], mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
        call registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].update() with:
             gas gas_remaining wei
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
        call registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].update() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function quote(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[6176 len 37], mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
        staticcall registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].consult(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg1), arg3
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
        staticcall registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].consult(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deploy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[6307 len 45], mem[209 len 19]
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[6176 len 37], mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not address(sha3(0, 13822055842494933265, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
            revert with 0, 32, 42, code.data[6265 len 42], mem[395 len 22]
        create contract with 0 wei
                        code: code.data[2336 len 3840], 0xbfd1ce8e6d85e911e80c169293d5c1f5c950fe03, address(arg1), arg2
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor1[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))]:
            sub_52ee56cd.length++
            sub_52ee56cd[sub_52ee56cd.length].field_0 = address(create.new_address)
        stor1[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = 1
        registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg1'), ('param', 'arg2')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = address(create.new_address)
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not address(sha3(0, 13822055842494933265, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
            revert with 0, 32, 42, code.data[6265 len 42], mem[395 len 22]
        create contract with 0 wei
                        code: code.data[2336 len 3840], 0xbfd1ce8e6d85e911e80c169293d5c1f5c950fe03, address(arg1), arg2
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor1[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))]:
            sub_52ee56cd.length++
            sub_52ee56cd[sub_52ee56cd.length].field_0 = address(create.new_address)
        stor1[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = 1
        registry[address(sha3(0, 13822055842494933265, ('map', ('param', 'arg2'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))] = address(create.new_address)
}



}
