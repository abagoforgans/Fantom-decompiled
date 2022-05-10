contract main {




// =====================  Runtime code  =====================


#
#  - sub_c56c9816(?)
#
uint32 stor1;
address owner;
uint256 stor1;
mapping of uint8 stor2;

function approveToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[arg1][arg2])
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if not arg1:
        call address(owner) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
    else:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
        else:
            mem[100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
            call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
