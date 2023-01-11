class QrcodesController < ApplicationController
  def reader
  end

  def generate
    @uuid = SecureRandom.uuid

    qrcode = RQRCode::QRCode.new(@uuid)
    @svg = qrcode.as_svg(
      color: "000",
      shape_rendering: "crispEdges",
      module_size: 6,
      standalone: true,
      use_path: true
    ).html_safe
  end
end
