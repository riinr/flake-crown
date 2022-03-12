{
  description = ''Encode/decode utf8 utf16 and utf32.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-encode-master.flake = false;
  inputs.src-encode-master.owner = "treeform";
  inputs.src-encode-master.ref   = "refs/heads/master";
  inputs.src-encode-master.repo  = "encode";
  inputs.src-encode-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-encode-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-encode-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}