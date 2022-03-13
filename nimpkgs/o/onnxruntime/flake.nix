{
  description = ''onnxruntime C Api wrapped for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."onnxruntime-main".dir   = "main";
  inputs."onnxruntime-main".owner = "nim-nix-pkgs";
  inputs."onnxruntime-main".ref   = "master";
  inputs."onnxruntime-main".repo  = "onnxruntime";
  inputs."onnxruntime-main".type  = "github";
  inputs."onnxruntime-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."onnxruntime-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}