contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == stor0:
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
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_0e64fe49(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        require ('cd', 4).length - 1 < ('cd', 4).length
        require 0 < ('cd', 4).length
        mem[128] = cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]
        idx = 0
        while idx < ('cd', 4).length - 1:
            require (2 * idx) + 1 < ('cd', 36).length
            require 2 * idx < ('cd', 36).length
            require 2 * idx + 1 < ('cd', 36).length
            require idx < ('cd', 4).length
            _98 = mem[(32 * idx) + 128]
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
                require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((64 * idx) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                    if not _98:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _98 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_98 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                else:
                    if not _98:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _98 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_98 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
            else:
                require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((64 * idx + 1) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                    if not _98:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _98 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_98 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                else:
                    if not _98:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _98 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_98 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _98) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_98 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[3986 len 32 * ('cd', 4).length]
        require ('cd', 4).length - 1 < ('cd', 4).length
        require 0 < ('cd', 4).length
        mem[128] = cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]
        idx = 0
        while idx < ('cd', 4).length - 1:
            require (2 * idx) + 1 < ('cd', 36).length
            require 2 * idx < ('cd', 36).length
            require 2 * idx + 1 < ('cd', 36).length
            require idx < ('cd', 4).length
            _99 = mem[(32 * idx) + 128]
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
                require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((64 * idx) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                    if not _99:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _99 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_99 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                else:
                    if not _99:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _99 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_99 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
            else:
                require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((64 * idx + 1) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                    if not _99:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _99 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_99 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                else:
                    if not _99:
                        require (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    else:
                        require (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        require idx + 1 < ('cd', 4).length
                        mem[(32 * idx + 1) + 128] = (10000 * _99 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (_99 * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * _99) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (_99 * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
            idx = idx + 1
            continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}

function sub_b4f713ce(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0
    mem[64] = 128
    require ('cd', 4).length - 1 < ('cd', 4).length
    idx = 0
    s = cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]
    while idx < ('cd', 4).length - 1:
        require (2 * idx) + 1 < ('cd', 36).length
        require 2 * idx < ('cd', 36).length
        require 2 * idx + 1 < ('cd', 36).length
        require idx < ('cd', 4).length
        require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
            require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
            staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[132] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
            staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(cd[((64 * idx) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                if not s:
                    if (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                else:
                    if (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * s * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (s * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
            else:
                if not s:
                    if (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                else:
                    if (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * s * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (s * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
        else:
            require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
            staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[132] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
            staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(cd[((64 * idx + 1) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                if not s:
                    if (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                else:
                    if (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * s * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (s * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
            else:
                if not s:
                    if (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                else:
                    if (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]):
                        idx = idx + 1
                        s = (10000 * s * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (s * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * s) + (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (s * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
        revert
    require ('cd', 4).length - 1 < ('cd', 4).length
    if s >= cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]:
        require 0 < ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ('cd', 36).length
        require 1 < ('cd', 36).length
        require ('cd', 4).length - 1 < ('cd', 4).length
        mem[132] = address(('cd', 36)[1])
        mem[164] = cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 36)[1]), cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        t = s
        while idx < ('cd', 4).length - 1:
            require (2 * idx) + 1 < ('cd', 36).length
            require 2 * idx < ('cd', 36).length
            require 2 * idx + 1 < ('cd', 36).length
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
                require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((64 * idx) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                    require (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    require 2 * idx + 1 < ('cd', 36).length
                    require 2 * idx < ('cd', 36).length
                    require (2 * idx) + 1 < ('cd', 36).length
                    require (2 * idx + 1) + 1 < ('cd', 36).length
                    if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
                        _532 = mem[64]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = mem[96]
                        _534 = mem[96]
                        s = 0
                        while s < mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not mem[96] % 32:
                            _724 = mem[64]
                            mem[mem[64]] = mem[96] + 164
                            mem[64] = _534 + mem[64] + 196
                            mem[_724 + 32] = mem[_724 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            _727 = mem[_724]
                            t = _724 + 32
                            u = _534 + _532 + 196
                            s = mem[_724]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_534 + _532 + floor32(mem[_724]) + 196] = mem[_724 + -(mem[_724] % 32) + floor32(mem[_724]) + 64 len mem[_724] % 32] or Mask(8 * -(mem[_724] % 32) + 32, -(8 * -(mem[_724] % 32) + 32) + 256, mem[_534 + _532 + floor32(mem[_724]) + 196])
                            call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[_534 + _532 + 196 len 4] with:
                                 gas gas_remaining wei
                                args mem[_534 + _532 + 200 len _727 - 4]
                            if return_data.size:
                                mem[64] = _534 + _532 + ceil32(return_data.size) + 197
                                mem[_534 + _532 + 196] = return_data.size
                                mem[_534 + _532 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                            continue 
                        mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                        _764 = mem[64]
                        mem[mem[64]] = floor32(mem[96]) + 196
                        mem[64] = floor32(_534) + mem[64] + 228
                        mem[_764 + 32] = mem[_764 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _767 = mem[_764]
                        t = _764 + 32
                        u = floor32(_534) + _532 + 228
                        s = mem[_764]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[floor32(_534) + _532 + floor32(mem[_764]) + 228] = mem[_764 + -(mem[_764] % 32) + floor32(mem[_764]) + 64 len mem[_764] % 32] or Mask(8 * -(mem[_764] % 32) + 32, -(8 * -(mem[_764] % 32) + 32) + 256, mem[floor32(_534) + _532 + floor32(mem[_764]) + 228])
                        call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[floor32(_534) + _532 + 228 len 4] with:
                             gas gas_remaining wei
                            args mem[floor32(_534) + _532 + 232 len _767 - 4]
                        if return_data.size:
                            mem[64] = floor32(_534) + _532 + ceil32(return_data.size) + 229
                            mem[floor32(_534) + _532 + 228] = return_data.size
                            mem[floor32(_534) + _532 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        _535 = mem[64]
                        mem[mem[64] + 36] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = mem[96]
                        _537 = mem[96]
                        s = 0
                        while s < mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not mem[96] % 32:
                            _729 = mem[64]
                            mem[mem[64]] = mem[96] + 164
                            mem[64] = _537 + mem[64] + 196
                            mem[_729 + 32] = mem[_729 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            _732 = mem[_729]
                            t = _729 + 32
                            u = _537 + _535 + 196
                            s = mem[_729]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_537 + _535 + floor32(mem[_729]) + 196] = mem[_729 + -(mem[_729] % 32) + floor32(mem[_729]) + 64 len mem[_729] % 32] or Mask(8 * -(mem[_729] % 32) + 32, -(8 * -(mem[_729] % 32) + 32) + 256, mem[_537 + _535 + floor32(mem[_729]) + 196])
                            call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[_537 + _535 + 196 len 4] with:
                                 gas gas_remaining wei
                                args mem[_537 + _535 + 200 len _732 - 4]
                            if return_data.size:
                                mem[64] = _537 + _535 + ceil32(return_data.size) + 197
                                mem[_537 + _535 + 196] = return_data.size
                                mem[_537 + _535 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                            continue 
                        mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                        _768 = mem[64]
                        mem[mem[64]] = floor32(mem[96]) + 196
                        mem[64] = floor32(_537) + mem[64] + 228
                        mem[_768 + 32] = mem[_768 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _771 = mem[_768]
                        t = _768 + 32
                        u = floor32(_537) + _535 + 228
                        s = mem[_768]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[floor32(_537) + _535 + floor32(mem[_768]) + 228] = mem[_768 + -(mem[_768] % 32) + floor32(mem[_768]) + 64 len mem[_768] % 32] or Mask(8 * -(mem[_768] % 32) + 32, -(8 * -(mem[_768] % 32) + 32) + 256, mem[floor32(_537) + _535 + floor32(mem[_768]) + 228])
                        call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[floor32(_537) + _535 + 228 len 4] with:
                             gas gas_remaining wei
                            args mem[floor32(_537) + _535 + 232 len _771 - 4]
                        if return_data.size:
                            mem[64] = floor32(_537) + _535 + ceil32(return_data.size) + 229
                            mem[floor32(_537) + _535 + 228] = return_data.size
                            mem[floor32(_537) + _535 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    t = t + 1
                    s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * t) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * t) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)])
                    continue 
                require (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                require 2 * idx + 1 < ('cd', 36).length
                require 2 * idx < ('cd', 36).length
                require (2 * idx) + 1 < ('cd', 36).length
                require (2 * idx + 1) + 1 < ('cd', 36).length
                if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
                    _538 = mem[64]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = mem[96]
                    _540 = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        _734 = mem[64]
                        mem[mem[64]] = mem[96] + 164
                        mem[64] = _540 + mem[64] + 196
                        mem[_734 + 32] = mem[_734 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _737 = mem[_734]
                        t = _734 + 32
                        u = _540 + _538 + 196
                        s = mem[_734]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_540 + _538 + floor32(mem[_734]) + 196] = mem[_734 + -(mem[_734] % 32) + floor32(mem[_734]) + 64 len mem[_734] % 32] or Mask(8 * -(mem[_734] % 32) + 32, -(8 * -(mem[_734] % 32) + 32) + 256, mem[_540 + _538 + floor32(mem[_734]) + 196])
                        call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[_540 + _538 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_540 + _538 + 200 len _737 - 4]
                        if return_data.size:
                            mem[64] = _540 + _538 + ceil32(return_data.size) + 197
                            mem[_540 + _538 + 196] = return_data.size
                            mem[_540 + _538 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                    mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                    _772 = mem[64]
                    mem[mem[64]] = floor32(mem[96]) + 196
                    mem[64] = floor32(_540) + mem[64] + 228
                    mem[_772 + 32] = mem[_772 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _775 = mem[_772]
                    t = _772 + 32
                    u = floor32(_540) + _538 + 228
                    s = mem[_772]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[floor32(_540) + _538 + floor32(mem[_772]) + 228] = mem[_772 + -(mem[_772] % 32) + floor32(mem[_772]) + 64 len mem[_772] % 32] or Mask(8 * -(mem[_772] % 32) + 32, -(8 * -(mem[_772] % 32) + 32) + 256, mem[floor32(_540) + _538 + floor32(mem[_772]) + 228])
                    call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[floor32(_540) + _538 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_540) + _538 + 232 len _775 - 4]
                    if return_data.size:
                        mem[64] = floor32(_540) + _538 + ceil32(return_data.size) + 229
                        mem[floor32(_540) + _538 + 228] = return_data.size
                        mem[floor32(_540) + _538 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _541 = mem[64]
                    mem[mem[64] + 36] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = mem[96]
                    _543 = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        _739 = mem[64]
                        mem[mem[64]] = mem[96] + 164
                        mem[64] = _543 + mem[64] + 196
                        mem[_739 + 32] = mem[_739 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _742 = mem[_739]
                        t = _739 + 32
                        u = _543 + _541 + 196
                        s = mem[_739]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_543 + _541 + floor32(mem[_739]) + 196] = mem[_739 + -(mem[_739] % 32) + floor32(mem[_739]) + 64 len mem[_739] % 32] or Mask(8 * -(mem[_739] % 32) + 32, -(8 * -(mem[_739] % 32) + 32) + 256, mem[_543 + _541 + floor32(mem[_739]) + 196])
                        call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[_543 + _541 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_543 + _541 + 200 len _742 - 4]
                        if return_data.size:
                            mem[64] = _543 + _541 + ceil32(return_data.size) + 197
                            mem[_543 + _541 + 196] = return_data.size
                            mem[_543 + _541 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                    mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                    _776 = mem[64]
                    mem[mem[64]] = floor32(mem[96]) + 196
                    mem[64] = floor32(_543) + mem[64] + 228
                    mem[_776 + 32] = mem[_776 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _779 = mem[_776]
                    t = _776 + 32
                    u = floor32(_543) + _541 + 228
                    s = mem[_776]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[floor32(_543) + _541 + floor32(mem[_776]) + 228] = mem[_776 + -(mem[_776] % 32) + floor32(mem[_776]) + 64 len mem[_776] % 32] or Mask(8 * -(mem[_776] % 32) + 32, -(8 * -(mem[_776] % 32) + 32) + 256, mem[floor32(_543) + _541 + floor32(mem[_776]) + 228])
                    call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[floor32(_543) + _541 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_543) + _541 + 232 len _779 - 4]
                    if return_data.size:
                        mem[64] = floor32(_543) + _541 + ceil32(return_data.size) + 229
                        mem[floor32(_543) + _541 + 228] = return_data.size
                        mem[floor32(_543) + _541 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(cd[((64 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx + 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                require ext_code.size(address(cd[((64 * idx) + cd[36] + 36)]))
                staticcall address(cd[((64 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((64 * idx + 1) + cd[36] + 36)]) != address(cd[((64 * idx) + cd[36] + 36)]):
                    require (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    require 2 * idx + 1 < ('cd', 36).length
                    require 2 * idx < ('cd', 36).length
                    require (2 * idx) + 1 < ('cd', 36).length
                    require (2 * idx + 1) + 1 < ('cd', 36).length
                    if address(cd[((64 * idx) + cd[36] + 36)]) < address(cd[((64 * idx + 1) + cd[36] + 36)]):
                        _544 = mem[64]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = mem[96]
                        _546 = mem[96]
                        s = 0
                        while s < mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not mem[96] % 32:
                            _744 = mem[64]
                            mem[mem[64]] = mem[96] + 164
                            mem[64] = _546 + mem[64] + 196
                            mem[_744 + 32] = mem[_744 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            _747 = mem[_744]
                            t = _744 + 32
                            u = _546 + _544 + 196
                            s = mem[_744]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_546 + _544 + floor32(mem[_744]) + 196] = mem[_744 + -(mem[_744] % 32) + floor32(mem[_744]) + 64 len mem[_744] % 32] or Mask(8 * -(mem[_744] % 32) + 32, -(8 * -(mem[_744] % 32) + 32) + 256, mem[_546 + _544 + floor32(mem[_744]) + 196])
                            call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[_546 + _544 + 196 len 4] with:
                                 gas gas_remaining wei
                                args mem[_546 + _544 + 200 len _747 - 4]
                            if return_data.size:
                                mem[64] = _546 + _544 + ceil32(return_data.size) + 197
                                mem[_546 + _544 + 196] = return_data.size
                                mem[_546 + _544 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                            continue 
                        mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                        _780 = mem[64]
                        mem[mem[64]] = floor32(mem[96]) + 196
                        mem[64] = floor32(_546) + mem[64] + 228
                        mem[_780 + 32] = mem[_780 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _783 = mem[_780]
                        t = _780 + 32
                        u = floor32(_546) + _544 + 228
                        s = mem[_780]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[floor32(_546) + _544 + floor32(mem[_780]) + 228] = mem[_780 + -(mem[_780] % 32) + floor32(mem[_780]) + 64 len mem[_780] % 32] or Mask(8 * -(mem[_780] % 32) + 32, -(8 * -(mem[_780] % 32) + 32) + 256, mem[floor32(_546) + _544 + floor32(mem[_780]) + 228])
                        call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[floor32(_546) + _544 + 228 len 4] with:
                             gas gas_remaining wei
                            args mem[floor32(_546) + _544 + 232 len _783 - 4]
                        if return_data.size:
                            mem[64] = floor32(_546) + _544 + ceil32(return_data.size) + 229
                            mem[floor32(_546) + _544 + 228] = return_data.size
                            mem[floor32(_546) + _544 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        _547 = mem[64]
                        mem[mem[64] + 36] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = mem[96]
                        _549 = mem[96]
                        s = 0
                        while s < mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not mem[96] % 32:
                            _749 = mem[64]
                            mem[mem[64]] = mem[96] + 164
                            mem[64] = _549 + mem[64] + 196
                            mem[_749 + 32] = mem[_749 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            _752 = mem[_749]
                            t = _749 + 32
                            u = mem[64]
                            s = mem[_749]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_749])] = mem[_749 + floor32(mem[_749]) + -(mem[_749] % 32) + 64 len mem[_749] % 32] or Mask(8 * -(mem[_749] % 32) + 32, -(8 * -(mem[_749] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_749])])
                            call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _752 + _549 + _547 + -mem[64] + 192]
                            if return_data.size:
                                _950 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_950] = return_data.size
                                mem[_950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                            continue 
                        mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                        _784 = mem[64]
                        mem[mem[64]] = floor32(mem[96]) + 196
                        mem[64] = floor32(_549) + mem[64] + 228
                        mem[_784 + 32] = mem[_784 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _787 = mem[_784]
                        t = _784 + 32
                        u = mem[64]
                        s = mem[_784]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_784])] = mem[_784 + floor32(mem[_784]) + -(mem[_784] % 32) + 64 len mem[_784] % 32] or Mask(8 * -(mem[_784] % 32) + 32, -(8 * -(mem[_784] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_784])])
                        call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _787 + floor32(_549) + _547 + -mem[64] + 224]
                        if return_data.size:
                            _951 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_951] = return_data.size
                            mem[_951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    t = t + 1
                    s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[32] * cd[((32 * t) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[32] * cd[((32 * t) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)])
                    continue 
                require (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                require 2 * idx + 1 < ('cd', 36).length
                require 2 * idx < ('cd', 36).length
                require (2 * idx) + 1 < ('cd', 36).length
                require (2 * idx + 1) + 1 < ('cd', 36).length
                if address(cd[((64 * idx) + cd[36] + 36)]) >= address(cd[((64 * idx + 1) + cd[36] + 36)]):
                    _553 = mem[64]
                    mem[mem[64] + 36] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = mem[96]
                    _555 = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        _759 = mem[64]
                        mem[mem[64]] = mem[96] + 164
                        mem[64] = _555 + mem[64] + 196
                        mem[_759 + 32] = mem[_759 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _762 = mem[_759]
                        t = _759 + 32
                        u = _555 + _553 + 196
                        s = mem[_759]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_555 + _553 + floor32(mem[_759]) + 196] = mem[_759 + -(mem[_759] % 32) + floor32(mem[_759]) + 64 len mem[_759] % 32] or Mask(8 * -(mem[_759] % 32) + 32, -(8 * -(mem[_759] % 32) + 32) + 256, mem[_555 + _553 + floor32(mem[_759]) + 196])
                        call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[_555 + _553 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_555 + _553 + 200 len _762 - 4]
                        if return_data.size:
                            mem[64] = _555 + _553 + ceil32(return_data.size) + 197
                            mem[_555 + _553 + 196] = return_data.size
                            mem[_555 + _553 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                    mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                    _792 = mem[64]
                    mem[mem[64]] = floor32(mem[96]) + 196
                    mem[64] = floor32(_555) + mem[64] + 228
                    mem[_792 + 32] = mem[_792 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _795 = mem[_792]
                    t = _792 + 32
                    u = floor32(_555) + _553 + 228
                    s = mem[_792]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[floor32(_555) + _553 + floor32(mem[_792]) + 228] = mem[_792 + -(mem[_792] % 32) + floor32(mem[_792]) + 64 len mem[_792] % 32] or Mask(8 * -(mem[_792] % 32) + 32, -(8 * -(mem[_792] % 32) + 32) + 256, mem[floor32(_555) + _553 + floor32(mem[_792]) + 228])
                    call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[floor32(_555) + _553 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_555) + _553 + 232 len _795 - 4]
                    if return_data.size:
                        mem[64] = floor32(_555) + _553 + ceil32(return_data.size) + 229
                        mem[floor32(_555) + _553 + 228] = return_data.size
                        mem[floor32(_555) + _553 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _550 = mem[64]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx + 1) + 1) + cd[36] + 36)])
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = mem[96]
                    _552 = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        _754 = mem[64]
                        mem[mem[64]] = mem[96] + 164
                        mem[64] = _552 + mem[64] + 196
                        mem[_754 + 32] = mem[_754 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        _757 = mem[_754]
                        t = _754 + 32
                        u = mem[64]
                        s = mem[_754]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_754])] = mem[_754 + floor32(mem[_754]) + -(mem[_754] % 32) + 64 len mem[_754] % 32] or Mask(8 * -(mem[_754] % 32) + 32, -(8 * -(mem[_754] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_754])])
                        call address(cd[((32 * (2 * idx) + 1) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _757 + _552 + _550 + -mem[64] + 192]
                        if return_data.size:
                            _952 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_952] = return_data.size
                            mem[_952 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * idx) + cd[4] + 36)])
                        continue 
                    mem[floor32(mem[96]) + mem[64] + 196] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 228 len mem[96] % 32]
                    _788 = mem[64]
                    mem[mem[64]] = floor32(mem[96]) + 196
                    mem[64] = floor32(_552) + mem[64] + 228
                    mem[_788 + 32] = mem[_788 + 36 len 28] or 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    _791 = mem[_788]
                    t = _788 + 32
                    u = mem[64]
                    s = mem[_788]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_788])] = mem[_788 + floor32(mem[_788]) + -(mem[_788] % 32) + 64 len mem[_788] % 32] or Mask(8 * -(mem[_788] % 32) + 32, -(8 * -(mem[_788] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_788])])
                    call address(cd[((32 * (2 * t) + 1) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _791 + floor32(_552) + _550 + -mem[64] + 224]
                    if return_data.size:
                        _953 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_953] = return_data.size
                        mem[_953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            s = (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)]) / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)]) - (ext_call.return_data[0] * cd[((32 * t) + cd[4] + 36)])
            continue 
        require 0 < ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'p'
}



}
