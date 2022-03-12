{
  description = ''Library for reading KeePass files and decrypt the passwords within it'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libkeepass-master.flake = false;
  inputs.src-libkeepass-master.owner = "PMunch";
  inputs.src-libkeepass-master.ref   = "refs/heads/master";
  inputs.src-libkeepass-master.repo  = "libkeepass";
  inputs.src-libkeepass-master.type  = "github";
  
  inputs."nimsha2".dir   = "nimpkgs/n/nimsha2";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".ref   = "flake-pinning";
  inputs."nimsha2".repo  = "flake-nimble";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimaes".dir   = "nimpkgs/n/nimaes";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".ref   = "flake-pinning";
  inputs."nimaes".repo  = "flake-nimble";
  inputs."nimaes".type  = "github";
  inputs."nimaes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimaes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libkeepass-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libkeepass-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}