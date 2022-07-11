contract main {




// =====================  Runtime code  =====================


const sub_2478ff6e(?) = 0x70f9bff7b5a10a20623f6ef1affba7497ad5668cbdae5c5ac3c2ff5d61728881

const sub_e394bd60(?) = 0x24d4015dfdf522b431876b94e4613c6d7fc7255655c5741f9757c7e0c96e75fb


address sub_7a84d834Address;
address stor1;
address stor2;

function sub_7a84d834(?) payable {
    return sub_7a84d834Address
}

function _fallback() payable {
    revert
}

function sub_a13421b2(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == 0x24d4015dfdf522b431876b94e4613c6d7fc7255655c5741f9757c7e0c96e75fb:
        return True
    return (arg1 == 0x70f9bff7b5a10a20623f6ef1affba7497ad5668cbdae5c5ac3c2ff5d61728881)
}

function sub_0d4a27f3(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 == 0x24d4015dfdf522b431876b94e4613c6d7fc7255655c5741f9757c7e0c96e75fb:
        require ext_code.size(stor1)
        call stor1.0x545e7c61 with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        if arg1 != 0x70f9bff7b5a10a20623f6ef1affba7497ad5668cbdae5c5ac3c2ff5d61728881:
            revert with 0, 'Unsupported contract name hash'
        if arg1 == 0x24d4015dfdf522b431876b94e4613c6d7fc7255655c5741f9757c7e0c96e75fb:
            require ext_code.size(stor1)
            call stor1.0x545e7c61 with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            if arg1 != 0x70f9bff7b5a10a20623f6ef1affba7497ad5668cbdae5c5ac3c2ff5d61728881:
                revert with 0, 'Emergency safety'
            require ext_code.size(stor2)
            call stor2.0x545e7c61 with:
                 gas gas_remaining wei
                args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}



}
