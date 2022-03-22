{
  description = ''Nim wrapper for the LZ4 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlz4-master.flake = false;
  inputs.src-nimlz4-master.owner = "dfdeshom";
  inputs.src-nimlz4-master.ref   = "master";
  inputs.src-nimlz4-master.repo  = "nimlz4.git";
  inputs.src-nimlz4-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlz4-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlz4-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}