{
  description = ''APIs available in the latests version of Nim, backported to older stable releases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-std_shims-master.flake = false;
  inputs.src-std_shims-master.owner = "status-im";
  inputs.src-std_shims-master.ref   = "refs/heads/master";
  inputs.src-std_shims-master.repo  = "nim-std-shims";
  inputs.src-std_shims-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-std_shims-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-std_shims-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}