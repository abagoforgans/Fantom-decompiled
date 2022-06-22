contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_acfb4272(?) payable {
    require calldata.size - 4 >= 96
    revert with 0, 'not implemented'
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0xe2bbb158 with:
         gas gas_remaining wei
        args arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0x441a3e70 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockableToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20]
}

function lockedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0x93f1a40b with:
            gas gas_remaining wei
           args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x79b846fd with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0xe2bbb158 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
