{
  description = ''Bencode serialization/deserialization library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bencode-master.flake = false;
  inputs.src-bencode-master.owner = "FedericoCeratto";
  inputs.src-bencode-master.ref   = "refs/heads/master";
  inputs.src-bencode-master.repo  = "nim-bencode";
  inputs.src-bencode-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bencode-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bencode-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}