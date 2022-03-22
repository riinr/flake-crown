{
  description = ''QR-code tools. Generate SVG-files with QR-codes, get QR-code sizes, etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-qr-master.flake = false;
  inputs.src-qr-master.ref   = "refs/heads/master";
  inputs.src-qr-master.owner = "ThomasTJdev";
  inputs.src-qr-master.repo  = "nim_qr";
  inputs.src-qr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-qr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-qr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}