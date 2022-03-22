{
  description = ''QR-code tools. Generate SVG-files with QR-codes, get QR-code sizes, etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-qr-v1_3_1.flake = false;
  inputs.src-qr-v1_3_1.owner = "ThomasTJdev";
  inputs.src-qr-v1_3_1.ref   = "v1_3_1";
  inputs.src-qr-v1_3_1.repo  = "nim_qr";
  inputs.src-qr-v1_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-qr-v1_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-qr-v1_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}