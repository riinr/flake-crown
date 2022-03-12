{
  description = ''module for creating and reading QR codes using http://goqr.me/'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-qrcode-master.flake = false;
  inputs.src-qrcode-master.owner = "achesak";
  inputs.src-qrcode-master.ref   = "refs/heads/master";
  inputs.src-qrcode-master.repo  = "nim-qrcode";
  inputs.src-qrcode-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-qrcode-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-qrcode-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}