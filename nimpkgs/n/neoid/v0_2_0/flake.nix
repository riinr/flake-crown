{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neoid-v0_2_0.flake = false;
  inputs.src-neoid-v0_2_0.owner = "theAkito";
  inputs.src-neoid-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-neoid-v0_2_0.repo  = "nim-neoid";
  inputs.src-neoid-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neoid-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-neoid-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}