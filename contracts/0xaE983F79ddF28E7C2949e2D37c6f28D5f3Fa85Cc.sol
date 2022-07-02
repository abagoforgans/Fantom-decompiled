contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
address stor1;
uint256 stor2;
mapping of uint128 posters;

function posters(address arg1) payable {
    require calldata.size - 4 >= 32
    return posters[arg1]
}

function _fallback() payable {
    revert
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    address(stor0.field_8) = arg1
}

function init() payable {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    stor1 = 0x5c8403a2617aca5c86946e32e14148776e37f72a
    address(stor0.field_8) = 0x5c8403a2617aca5c86946e32e14148776e37f72a
}

function getOracleGas(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x2f31e7527e69d235bf77b514dd5230941e6a9855)
    staticcall 0x2f31e7527e69d235bf77b514dd5230941e6a9855.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == address(stor0.field_8)
    require ext_call.return_data[0]
    if (10^14 * block.number) - (10^14 * ext_call.return_data[0]) - stor2 >= arg1:
        require ext_code.size(0x742133180738679782538c9e66a03d0c0270ace8)
        call 0x742133180738679782538c9e66a03d0c0270ace8.0x7387f44d with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require bool(ext_call.return_data[0]) == 1
        stor2 += arg1
}

function getRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x2f31e7527e69d235bf77b514dd5230941e6a9855)
    staticcall 0x2f31e7527e69d235bf77b514dd5230941e6a9855.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= (56 * 10^14 * block.number) - (56 * 10^14 * ext_call.return_data[0]) - stor2
    require posters[address(msg.sender)] >= arg1
    posters[address(msg.sender)] = uint128(posters[address(msg.sender)] - arg1)
    stor2 += arg1
    require ext_code.size(0x742133180738679782538c9e66a03d0c0270ace8)
    call 0x742133180738679782538c9e66a03d0c0270ace8.0x7387f44d with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
}

function updatePosters(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == address(stor0.field_8)
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        posters[mem[(32 * idx) + 140 len 20]] = uint128(posters[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160])
        idx = idx + 1
        continue 
}



}
