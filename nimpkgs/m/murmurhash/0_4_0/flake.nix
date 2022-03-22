{
  description = ''Pure nim implementation of murmur hash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-murmurhash-0_4_0.flake = false;
  inputs.src-murmurhash-0_4_0.owner = "cwpearson";
  inputs.src-murmurhash-0_4_0.ref   = "0_4_0";
  inputs.src-murmurhash-0_4_0.repo  = "nim-murmurhash";
  inputs.src-murmurhash-0_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-murmurhash-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-murmurhash-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}