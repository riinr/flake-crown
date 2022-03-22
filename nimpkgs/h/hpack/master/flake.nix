{
  description = ''HPACK (Header Compression for HTTP/2)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hpack-master.flake = false;
  inputs.src-hpack-master.owner = "nitely";
  inputs.src-hpack-master.ref   = "master";
  inputs.src-hpack-master.repo  = "nim-hpack";
  inputs.src-hpack-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hpack-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hpack-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}